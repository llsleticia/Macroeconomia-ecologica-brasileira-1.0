############################################################
# SFC CLIMATE MODEL BRAZIL – FINAL (REAL + POLICY MIX + 31 GRAPHS)
############################################################

############################
# PACOTES
############################
library(deSolve)
library(tidyverse)
library(readr)
library(httr)
library(jsonlite)
library(mFilter)
library(zoo)

options(warn = 1)

############################################################
# FUNÇÕES AUXILIARES
############################################################
safe <- function(x){
  x[!is.finite(x)] <- 0
  x
}

safediv <- function(a,b){
  a/(b+1e-6)
}

clamp <- function(x, min_val=-1e6, max_val=1e6){
  pmax(pmin(x, max_val), min_val)
}

############################################################
# API BCB
############################################################
get_sgs <- function(code){
  url <- paste0("https://api.bcb.gov.br/dados/serie/bcdata.sgs.",code,"/dados?formato=json")
  res <- httr::GET(url)
  txt <- httr::content(res,"text",encoding="UTF-8")
  json <- jsonlite::fromJSON(txt)
  
  df <- as.data.frame(json)
  df$data <- as.Date(df$data,"%d/%m/%Y")
  df$valor <- as.numeric(df$valor)
  df <- df[complete.cases(df),]
  
  as_tibble(df)
}

############################################################
# DADOS REAIS
############################################################
pib   <- get_sgs(1208)
ipca  <- get_sgs(433)
selic <- get_sgs(1178)

df_real <- pib %>%
  rename(Y=valor) %>%
  inner_join(ipca %>% rename(pi=valor), by="data") %>%
  inner_join(selic %>% rename(i=valor), by="data") %>%
  arrange(data)

############################################################
# OUTPUT GAP
############################################################
hp <- mFilter::hpfilter(df_real$Y, freq=14400)
df_real$gap <- (df_real$Y - hp$trend)/(hp$trend+1e-6)

############################################################
# REGRA DE TAYLOR
############################################################
model_taylor <- lm(i ~ pi + gap, data=df_real)

phi_pi <- as.numeric(coef(model_taylor)[2])
phi_y  <- as.numeric(coef(model_taylor)[3])

############################################################
# PARÂMETROS
############################################################
base_params <- list(
  alpha=0.33,
  c_prop=0.65,
  phi_pi=phi_pi,
  phi_y=phi_y,
  carbon_sink=0.04,
  damage_coeff=0.03,
  tipping_temp=2.5,
  deforestation_rate=0.015,
  regen_rate=0.004,
  energy_intensity=0.4,
  tax_rate=0.25,
  gov_spending_rate=0.28,
  carbon_tax_base=30,
  carbon_tax_sensitivity=20,
  green_subsidy_rate=0.06,
  green_spending_rate=0.05
)

############################################################
# ESTADO INICIAL
############################################################
Y0 <- mean(df_real$Y, na.rm=TRUE)

state0 <- c(
  K=Y0,
  Loans=0.6*Y0,
  Deposits=0.6*Y0,
  Bonds=0.8*Y0,
  NFA=-0.2*Y0,
  ExchangeRate=5,
  CO2=415,
  Temperature=1.2,
  Forest=100,
  Inflation=tail(df_real$pi,1)/100,
  Expected_Inflation=tail(df_real$pi,1)/100,
  InterestRate=tail(df_real$i,1)/100
)

############################################################
# MODELO
############################################################
model <- function(t,state,params){
  
  with(as.list(c(state,params)),{
    
    Temp_eq <- 3*log((CO2+1e-6)/280)/log(2)
    tipping <- 1 + 1/(1 + exp(-5*(Temperature - tipping_temp)))
    dTemperature <- 0.2*(Temp_eq-Temperature)*tipping
    
    dCO2 <- energy_intensity*K + 0.5*(100-Forest) - carbon_sink*(CO2-280)
    dForest <- -deforestation_rate*Forest + regen_rate*(100-Forest)
    
    GDP <- clamp((K^alpha)*exp(-damage_coeff*Temperature^2),0,100)
    
    carbon_tax <- carbon_tax_base + carbon_tax_sensitivity*Temperature
    green_subsidy <- green_subsidy_rate*K
    green_spending <- green_spending_rate*GDP
    
    Exports <- 0.35*ExchangeRate
    Imports <- 0.3*GDP
    TradeBalance <- Exports - Imports
    
    dNFA <- TradeBalance
    dExchangeRate <- -0.15*TradeBalance
    
    i_star <- 0.04 + phi_pi*(Inflation-0.03) + phi_y*(GDP-1)
    dInterestRate <- 0.5*(i_star-InterestRate)
    
    Consumption <- c_prop * GDP
    Savings <- GDP - Consumption
    
    tax_revenue <- tax_rate*GDP + carbon_tax*0.02
    gov_spending <- gov_spending_rate*GDP + green_spending
    
    dBonds <- -(tax_revenue - gov_spending)
    
    fragility <- safediv(Loans,Deposits)
    dLoans <- 0.15*GDP - 0.1*InterestRate - 0.2*fragility
    dDeposits <- Savings - dBonds
    
    Investment <- 0.18*GDP - 0.12*InterestRate + green_subsidy
    dK <- Investment - 0.05*K
    
    dInflation <- 0.4*(GDP-1)
    dExpected_Inflation <- 0.3*(Inflation-Expected_Inflation)
    
    return(list(
      c(dK,dLoans,dDeposits,dBonds,dNFA,
        dExchangeRate,dCO2,dTemperature,dForest,
        dInflation,dExpected_Inflation,dInterestRate),
      
      GDP=GDP,
      Consumption=Consumption,
      Investment=Investment,
      carbon_tax=carbon_tax,
      green_subsidy=green_subsidy,
      green_spending=green_spending,
      TradeBalance=TradeBalance,
      fragility=fragility
    ))
  })
}

############################################################
# CENÁRIOS POLICY MIX
############################################################
scenarios <- list(
  
  "Baseline" = list(
    carbon_tax_base=10,
    carbon_tax_sensitivity=5,
    green_subsidy_rate=0.02,
    green_spending_rate=0.02
  ),
  
  "Subsídio Verde" = list(
    carbon_tax_base=10,
    carbon_tax_sensitivity=5,
    green_subsidy_rate=0.10,
    green_spending_rate=0.02
  ),
  
  "Imposto sobre Carbono" = list(
    carbon_tax_base=60,
    carbon_tax_sensitivity=30,
    green_subsidy_rate=0.02,
    green_spending_rate=0.02
  ),
  
  "Política Fiscal Verde" = list(
    carbon_tax_base=40,
    carbon_tax_sensitivity=20,
    green_subsidy_rate=0.08,
    green_spending_rate=0.08
  )
)

############################################################
# SIMULAÇÃO
############################################################
times <- seq(2025,2100,1)

df <- purrr::map_dfr(names(scenarios), function(scn){
  
  params <- modifyList(base_params, scenarios[[scn]])
  
  sim <- as.data.frame(
    ode(y=state0, times=times, func=model, parms=params)
  )
  
  sim$scenario <- scn
  sim
})

############################################################
# VARIÁVEIS DERIVADAS (31 GRÁFICOS)
############################################################
df <- df %>%
  group_by(scenario) %>%
  mutate(
    growth = safe((GDP - lag(GDP))/(lag(GDP)+1e-6)),
    emissions = safe(c(0,diff(CO2))),
    debt_ratio = safediv(Bonds,GDP),
    unemployment = pmax(0,0.12-0.4*growth),
    renewable_share = plogis(0.05*carbon_tax),
    real_interest = InterestRate - Inflation,
    capital_productivity = safediv(GDP,K),
    carbon_intensity = safediv(CO2,GDP),
    
    fiscal_balance =
      (0.25*GDP + carbon_tax*0.02) -
      (0.28*GDP + green_spending),
    
    policy_mix_intensity =
      0.4*carbon_tax +
      0.3*green_subsidy +
      0.3*green_spending
  ) %>%
  ungroup()

############################################################
# EXPORTAÇÃO
############################################################
dir.create("final_output/graphs", recursive=TRUE, showWarnings=FALSE)
write_csv(df,"final_output/simulacao_final.csv")

############################################################
# 31 GRÁFICOS
############################################################
vars <- c(
  "GDP","growth","K","Investment","Consumption",
  "CO2","emissions","Temperature","Forest",
  "carbon_tax","green_subsidy","green_spending",
  "policy_mix_intensity",
  "InterestRate","Inflation","Expected_Inflation",
  "real_interest",
  "Loans","Deposits","fragility",
  "ExchangeRate","TradeBalance","NFA",
  "debt_ratio","unemployment",
  "renewable_share","carbon_intensity",
  "capital_productivity",
  "fiscal_balance"
)

i <- 1

for(v in vars){
  
  if(!(v %in% colnames(df))) next
  
  p <- ggplot(df, aes(x=time, y=.data[[v]], color=scenario)) +
    geom_line(linewidth=1.3) +
    theme_classic(base_size=14) +
    theme(
      plot.background = element_rect(fill="white", color=NA),
      panel.background = element_rect(fill="white"),
      plot.title = element_text(face="bold"),
      legend.position="bottom"
    ) +
    labs(
      title=paste("Brasil –",v),
      x="Tempo",
      y=v,
      color="Política"
    )
  
  ggsave(
    paste0("final_output/graphs/",sprintf("%02d_",i),v,".png"),
    plot=p,
    width=9,
    height=5,
    dpi=300
  )
  
  i <- i+1
}

############################################################
# FINAL
############################################################
cat("✅ MODELO FINAL (REAL + POLICY MIX + 31 GRÁFICOS) EXECUTADO\n")