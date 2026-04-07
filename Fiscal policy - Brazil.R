############################################################
# BRAZIL SFC - CLIMATE MODEL 
############################################################

############################
# 1. PACKAGES
############################
suppressPackageStartupMessages({
  library(deSolve)
  library(tidyverse)
  library(httr)
  library(jsonlite)
  library(zoo)
  library(gridExtra)
  library(sidrar)
  library(mFilter)
  library(broom)
  library(patchwork)
  library(ggplot2)
  library(dplyr)
})

set.seed(123)

############################################################
# 2. UTILITY FUNCTIONS (CORRECTED)
############################################################
safe <- function(x){ x[!is.finite(x)] <- 0; x }
safe_div <- function(a,b){ a/(b+1e-8) }
clamp <- function(x,min_val=0,max_val=1e6){ pmax(pmin(x,max_val),min_val) }

safe_approx <- function(x,y,xout){
  df <- tibble(x=x,y=y) %>%
    drop_na() %>%
    arrange(x)
  
  if(nrow(df)<2) return(rep(mean(y,na.rm=TRUE),length(xout)))
  approx(df$x,df$y,xout=xout,rule=2)$y
}

fill_series <- function(df){
  tibble(time=1990:2100) %>%
    left_join(df,by="time") %>%
    mutate(value=zoo::na.approx(value,na.rm=FALSE)) %>%
    tidyr::fill(value,.direction="downup")
}

############################################################
# 3. APIs (BCB + IBGE)
############################################################
get_sgs <- function(code){
  url <- paste0("https://api.bcb.gov.br/dados/serie/bcdata.sgs.",code,"/dados?formato=json")
  res <- tryCatch(GET(url),error=function(e) NULL)
  if(is.null(res) || status_code(res)!=200)
    return(tibble(time=1990:2024,value=NA))
  
  raw <- fromJSON(content(res,"text", encoding="UTF-8"))
  
  tibble(
    time = as.numeric(substr(raw$data,7,10)),
    value = as.numeric(gsub(",",".",raw$valor))
  ) %>%
    group_by(time) %>%
    summarise(value=mean(value,na.rm=TRUE),.groups="drop")
}

get_sidra <- function(table,var){
  url <- paste0("https://apisidra.ibge.gov.br/values/t/",table,"/v/",var,"/p/all/g/1")
  res <- tryCatch(GET(url),error=function(e) NULL)
  if(is.null(res) || status_code(res)!=200)
    return(tibble(time=1990:2024,value=NA))
  
  raw <- fromJSON(content(res,"text"))[-1,]
  tcol <- names(raw)[grepl("^D",names(raw))][1]
  
  raw %>%
    transmute(
      time = as.numeric(substr(.data[[tcol]],1,4)),
      value = as.numeric(gsub(",",".",Valor))
    ) %>%
    group_by(time) %>%
    summarise(value=mean(value,na.rm=TRUE),.groups="drop")
}

############################################################
# 4. SEEG (CSV – BY SECTOR)
############################################################
read_seeg <- function(path){
  df <- read_csv(path,show_col_types=FALSE)
  
  ycol <- names(df)[grepl("ano|year",names(df),ignore.case=TRUE)][1]
  vcol <- names(df)[grepl("co2|emiss|total",names(df),ignore.case=TRUE)][1]
  
  df %>%
    rename(time=all_of(ycol),value=all_of(vcol)) %>%
    mutate(time=as.numeric(time),
           value=as.numeric(gsub(",",".",value))) %>%
    group_by(time) %>%
    summarise(value=sum(value,na.rm=TRUE),.groups="drop")
}

# SEEG by sector
seeg_agro   <- fill_series(read_seeg("seeg_agriculture.csv"))
seeg_lu     <- fill_series(read_seeg("seeg_landuse.csv"))
seeg_energy <- fill_series(read_seeg("seeg_energy.csv"))
seeg_ind    <- fill_series(read_seeg("seeg_industry.csv"))
seeg_res    <- fill_series(read_seeg("seeg_waste.csv"))

seeg_total <- reduce(
  list(seeg_agro, seeg_lu, seeg_energy, seeg_ind, seeg_res),
  function(x,y){
    full_join(x,y,by="time") %>%
      mutate(value=rowSums(select(.,contains("value")),na.rm=TRUE)) %>%
      select(time,value)
  }
)

############################################################
# 5. INPE (PRODES)
############################################################
get_inpe_prodes <- function(){
  url <- "https://terrabrasilis.dpi.inpe.br/api/v1/prodes/biomes/amazon"
  res <- tryCatch(GET(url), error=function(e) NULL)
  
  if(is.null(res) || status_code(res)!=200)
    return(tibble(time=1990:2024, defor=NA))
  
  raw <- fromJSON(content(res,"text"))
  
  as_tibble(raw$features) %>%
    mutate(
      time = as.numeric(properties$year),
      defor = as.numeric(properties$area)
    ) %>%
    select(time, defor) %>%
    group_by(time) %>%
    summarise(defor=sum(defor,na.rm=TRUE), .groups="drop")
}

inpe_defor <- fill_series(get_inpe_prodes())

############################################################
# 6. MACRO DATA
############################################################
gdp     <- fill_series(get_sidra("6791","93"))
credit  <- fill_series(get_sgs(10559))
deposit <- fill_series(get_sgs(27785))
selic   <- fill_series(get_sgs(11))

############################################################
# 7. AMAZON
############################################################
regions <- c("PA","AM","MT","RO","AC","RR","AP","TO","MA")
weights <- runif(length(regions),0.05,0.2)
weights <- weights/sum(weights)

spatial_deforestation <- function(defor){
  tibble(region=regions, defor=defor*weights)
}

amazon_emissions <- function(defor){
  defor * 100 / 1000
}

############################################################
# 8. RECALIBRATED PARAMETERS (CORRECTED)
############################################################
params <- list(
  alpha             = 0.33,
  depreciation      = 0.05,
  damage            = 0.002,
  phi_pi            = 1.5,
  r_neutral          = 0.03,
  tax_rate          = 0.25,
  carbon_tax_rate   = 0.02,
  mandatory_share   = 0.92,
  target_exp_growth = 0.025,
  green_spending    = 0.05,
  amazon_threshold  = 0.78,
  pop_growth        = 0.008,
  okun_coeff        = 2.5,
  # New Parameters
  learning_rate     = 0.05,  # Efficiency of green capital accumulation
  exch_vol          = 0.1,   # Exchange rate sensitivity to risk
  comm_price        = 1.0    # Base commodity price
)

############################################################
# 9. INITIAL STATE (CORRECTED)
############################################################
state0 <- c(
  Capital      = 1.2,
  GreenCap     = 0.05,   # Initial green infrastructure stock
  Loans        = 0.4,
  Deposits     = 0.8,
  Reserves     = 0.1,
  GovDebt      = 0.75,
  CO2          = 415,
  Temp         = 1.1,
  Forest       = 81,
  Unemployment = 0.08,
  Labor_Force  = 1.0,
  Exch         = 5.0     # Initial nominal exchange rate (BRL/USD)
)

############################################################
# 10. GREEN FISCAL RULE
############################################################
fiscal_rule <- function(debt, gdp){
  0.2 + 0.1*(debt/(gdp+1e-6) - 0.6)
}

############################################################
# 11. REVISED MODEL (STABILIZED + SHOCK TRIGGER)
############################################################
model_adj <- function(time, state, par) {
  with(as.list(c(state, par)), {
    
    tipping_active <- if(Forest < (amazon_threshold * 100)) 1 else 0
    shock_factor <- if(tipping_active == 1) 0.7 else 1.0
    
    terms_of_trade <- comm_price * (1 - 0.01 * Temp)
    
    risk_premium <- plogis(12 * (GovDebt - 0.85))
    target_exch <- 5.0 * (1 + risk_premium) / (terms_of_trade + 1e-6)
    Exch_dot <- 0.15 * (target_exch - Exch) 
    
    inf_shock <- 0.1 * (Exch_dot / Exch)
    
    rainfall_factor <- clamp(Forest / 100, 0.2, 1)
    hydro_risk <- plogis(10 * (Temp - 1.5)) * (1 + (1 - rainfall_factor))
    
    forest_productivity <- ((Forest / 80)^0.15 * (1 - 0.3 * hydro_risk)) * shock_factor
    GDP_pot <- 0.6 * (Capital^alpha) * forest_productivity
    
    climate_damage_shock <- exp(-damage * (Temp^2))
    NX <- (0.15 * Exch * terms_of_trade - 0.12 * GDP_pot)
    GDP_curr <- clamp(GDP_pot * climate_damage_shock + 0.2 * NX, 0.05, 25)
    
    gap <- ((GDP_curr - GDP_pot)/(GDP_pot + 1e-6)) + inf_shock
    
    r <- clamp(r_neutral + phi_pi * gap, 0.01, 0.22)
    
    Investment <- 0.12 * GDP_curr * (1 - r)
    G_green <- (green_spending * GDP_curr) * (1 - plogis(20*(GovDebt-0.9)))
    
    GreenCap_dot <- G_green + (0.15 * Investment) - 0.04 * GreenCap
    carbon_intensity <- 0.12 * exp(-learning_rate * GreenCap)
    
    emissions_net <- (carbon_intensity * GDP_curr) + (0.015 * (100 - Forest))
    CO2_dot <- 0.1 * emissions_net + 0.01*(CO2-280) - 0.012*(CO2-280)
    Temp_dot <- 0.035 * log(CO2/280) - 0.015 * Temp
    
    taxes <- (tax_rate * GDP_curr) + (carbon_tax_rate * (CO2-280))
    GovDebt_dot <- (mandatory_share*GDP_curr + G_green - taxes) + (r * GovDebt)
    Capital_dot <- (0.85 * Investment) - (depreciation + 0.02*hydro_risk) * Capital
    
    defor_total <- 0.006 * (1 + 10 * plogis(35 * (amazon_threshold - Forest/100)))
    Forest_dot <- -defor_total * 2.5
    
    Unemployment_dot <- 0.3 * (clamp(0.12 - 0.4*gap, 0.05, 0.28) - Unemployment)
    
    list(
      c(Capital_dot, GreenCap_dot, 0, 0, 0, GovDebt_dot, 
        CO2_dot, Temp_dot, Forest_dot, Unemployment_dot, 0, Exch_dot),
      GDP = GDP_curr,
      r_selic = r,
      emissions = emissions_net,
      tipping_active = tipping_active
    )
  })
}
############################################################
# 12. MONTE CARLO
############################################################
times <- seq(1990, 2100, 1)
n_mc <- 100

mc_all <- map_dfr(1:n_mc, function(i){
  p_mc <- params
  p_mc$comm_price <- rnorm(1, 1.0, 0.15)
  p_mc$damage <- rnorm(1, params$damage, 0.0005)
  
  out <- as.data.frame(ode(y=state0, times=times, func=model_adj, parms=p_mc))
  out$sim <- i
  return(out)
})

############################################################
# 13. SUMMARY 
############################################################

mc_summary <- mc_all %>%
  group_by(time) %>%
  summarise(
    # Macro
    GDP_mean = mean(GDP, na.rm=TRUE),
    GDP_p5   = quantile(GDP, 0.05, na.rm=TRUE),
    GDP_p95  = quantile(GDP, 0.95, na.rm=TRUE),
    
    Debt_mean = mean(GovDebt, na.rm=TRUE),
    Debt_p5   = quantile(GovDebt, 0.05, na.rm=TRUE),
    Debt_p95  = quantile(GovDebt, 0.95, na.rm=TRUE),
    
    Unemployment_mean = mean(Unemployment, na.rm=TRUE),
    Unemployment_p5   = quantile(Unemployment, 0.05, na.rm=TRUE),
    Unemployment_p95  = quantile(Unemployment, 0.95, na.rm=TRUE),
    
    Selic_mean = mean(r_selic, na.rm=TRUE),
    
    # Climate and Forest
    Temp_mean = mean(Temp, na.rm=TRUE),
    Temp_p5   = quantile(Temp, 0.05, na.rm=TRUE),
    Temp_p95  = quantile(Temp, 0.95, na.rm=TRUE),
    
    Forest_mean = mean(Forest, na.rm=TRUE),
    Forest_p5   = quantile(Forest, 0.05, na.rm=TRUE),
    Forest_p95  = quantile(Forest, 0.95, na.rm=TRUE),
    
    CO2_mean = mean(CO2, na.rm=TRUE),
    CO2_p5   = quantile(CO2, 0.05, na.rm=TRUE),
    CO2_p95  = quantile(CO2, 0.95, na.rm=TRUE),
    
    # Flow/Stress Variables
    Emissions_mean = mean(emissions, na.rm=TRUE),
    Fiscal_Stress_mean = mean(tipping_active, na.rm=TRUE),
    
    .groups="drop"
  )


############################################################
# 14. VALIDATION
############################################################
validation <- mc_summary %>%
  left_join(gdp, by="time") %>%
  rename(GDP_real = value) %>%
  filter(!is.na(GDP_real))

if(nrow(validation) > 0){
  rmse <- sqrt(mean((validation$GDP_mean - validation$GDP_real)^2, na.rm=TRUE))
  cat("\n📊 GDP RMSE:", rmse)
}

############################################################
# 15. EXPORT
############################################################
write_csv(mc_summary, "results_simulation_summary.csv")
saveRDS(mc_all, "monte_carlo_full.rds")

############################
# 16. COMPLETE FIGURES (CORRECTED)
############################

dir.create("figures_pub/png_individual", showWarnings = FALSE, recursive = TRUE)

# Initialize master list
all_plots <- list()

# Color Palette
eco_cols <- list(
  gdp       = "#1b9e77",
  emissions = "#d95f02",
  temp      = "#7570b3",
  forest    = "#66a61e",
  finance   = "#e7298a",
  social    = "#d62728"
)

theme_eco <- function(){
  theme_minimal(base_size = 12) +
    theme(
      plot.title = element_text(face="bold", size=10),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(color="grey90")
    )
}

# Plotting Helper Functions
line_plot <- function(var, col, title_name){
  ggplot(mc_summary, aes(time, .data[[var]])) +
    geom_line(color=col, linewidth=1) +
    theme_eco() + 
    labs(title=title_name, x="Year", y="Value")
}

fan_plot_fixed <- function(var_base, col, title_name){
  ggplot(mc_summary, aes(time)) +
    geom_ribbon(aes(ymin = .data[[paste0(var_base, "_p5")]], 
                    ymax = .data[[paste0(var_base, "_p95")]]), 
                fill=col, alpha=0.2) +
    geom_line(aes(y=.data[[paste0(var_base, "_mean")]]), 
              color=col, linewidth=1) +
    theme_eco() + 
    labs(title=paste("Projection:", title_name), y="90% CI", x="Year")
}

# --- Filling the list (1-10: Means) ---
all_plots[[1]]  <- line_plot("GDP_mean", eco_cols$gdp, "Real GDP")
all_plots[[2]]  <- line_plot("Debt_mean", eco_cols$finance, "Public Debt / GDP")
all_plots[[3]]  <- line_plot("Unemployment_mean", eco_cols$social, "Unemployment Rate")
all_plots[[4]]  <- line_plot("Selic_mean", eco_cols$finance, "Selic Interest Rate")
all_plots[[5]]  <- line_plot("Fiscal_Stress_mean", "#444444", "Tipping Point Probability")
all_plots[[6]]  <- line_plot("Emissions_mean", eco_cols$emissions, "Net Emissions")
all_plots[[7]]  <- line_plot("CO2_mean", eco_cols$emissions, "Atmospheric CO2")
all_plots[[8]]  <- line_plot("Temp_mean", eco_cols$temp, "Temp. Anomaly")
all_plots[[9]]  <- line_plot("Forest_mean", eco_cols$forest, "Forest Cover (%)")
all_plots[[10]] <- line_plot("GDP_p95", eco_cols$gdp, "GDP (Optimistic Scenario)")

# --- 11-20: Fan Charts ---
all_plots[[11]] <- fan_plot_fixed("GDP", eco_cols$gdp, "GDP")
all_plots[[12]] <- fan_plot_fixed("Unemployment", eco_cols$social, "Unemployment")
all_plots[[13]] <- fan_plot_fixed("Temp", eco_cols$temp, "Temperature")
all_plots[[14]] <- fan_plot_fixed("Forest", eco_cols$forest, "Forest")
all_plots[[15]] <- fan_plot_fixed("CO2", eco_cols$emissions, "CO2 Concentration")
all_plots[[16]] <- fan_plot_fixed("Debt", eco_cols$finance, "Debt Sustainability")

# --- 21-30: Structural Relationships ---
all_plots[[21]] <- ggplot(mc_summary, aes(GDP_mean, CO2_mean)) + geom_path(color=eco_cols$gdp) + theme_eco() + labs(title="GDP vs CO2 Curve")
all_plots[[22]] <- ggplot(mc_summary, aes(Temp_mean, GDP_mean)) + geom_point(alpha=0.5) + theme_eco() + labs(title="Thermal Damage on GDP")
all_plots[[23]] <- ggplot(mc_summary, aes(Forest_mean, GDP_mean)) + geom_path() + theme_eco() + labs(title="GDP vs Forest")
all_plots[[24]] <- ggplot(mc_summary, aes(Debt_mean, Selic_mean)) + geom_point() + theme_eco() + labs(title="Sovereign Risk vs Interest Rates")

# --- 41-50: Probability Distributions (Simulation End) ---
final_data <- mc_all %>% filter(time == 2100)
dist_vars  <- c("GDP", "CO2", "Temp", "Forest", "GovDebt")
dist_plots <- lapply(dist_vars, function(v){
  ggplot(final_data, aes(x=.data[[v]])) + 
    geom_density(fill="steelblue", alpha=0.4) + theme_eco() + labs(title=paste("2100 Density:", v))
})
all_plots  <- c(all_plots, dist_plots)

# --- 51-60: Individual Trajectories ---
traj_vars  <- c("GDP", "Forest", "Temp")
traj_plots <- lapply(traj_vars, function(v){
  ggplot(mc_all %>% filter(sim <= 10), aes(time, .data[[v]], group=sim)) +
    geom_line(alpha=0.3, color="blue") + theme_eco() + labs(title=paste("10 Trajectories:", v))
})
all_plots  <- c(all_plots, traj_plots)

# Final Cleanup and Export
all_plots <- all_plots[!sapply(all_plots, is.null)]

pdf("figures_pub/BRAZIL_SIMULATION_2100.pdf", width=11, height=8)
for(p in all_plots) { if(inherits(p, "ggplot")) print(p) }
dev.off()

for (i in seq_along(all_plots)) {
  ggsave(sprintf("figures_pub/png_individual/plot_%02d.png", i), 
         plot = all_plots[[i]], width = 10, height = 7, dpi = 300, bg = "white")
}

cat("\n✅ Process completed! Charts saved in 'figures_pub/'.")