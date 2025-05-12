# Instalar e carregar pacotes
library(deSolve)
library(ggplot2)
library(gridExtra)
library (shiny)
library(rsconnect)

# Parâmetros expandidos
params <- c(
  propensao_consumo = 0.6,
  propensao_investimento = 0.2,
  taxa_impostos = 0.15,
  imposto_carbono = 100,
  subsidio_verde = 0.05,
  investimento_verde = 0.03,
  taxa_crescimento_base = 0.03,
  
  emissao_agropecuaria = 0.25,
  emissao_industria = 0.10,
  emissao_energia = 0.18,
  emissao_residuos = 0.04,
  
  # Parâmetros climáticos
  fator_temp_emissao = 0.0000000002,  # Conversão CO2 acumulado -> ΔT (°C)
  taxa_reducao_emissao_energia = 0.005,  # Redução de emissões com energia limpa
  taxa_crescimento_energia_limpa = 0.02  # Crescimento básico da energia limpa
)

# Modelo expandido com clima e energia
modelo_climatico_sfc <- function(t, state, parms) {
  with(as.list(c(state, parms)), {
    # PIB atual
    pib_atual <- pib
    
    # Fluxos econômicos
    consumo <- pib_atual * propensao_consumo
    investimento <- pib_atual * propensao_investimento
    impostos <- pib_atual * taxa_impostos
    investimento_gov_verde <- pib_atual * investimento_verde
    subsidios_verdes <- pib_atual * subsidio_verde
    
    # PIB total
    pib_total <- consumo + investimento + investimento_gov_verde + subsidios_verdes + impostos
    
    # Emissões brutas
    emissoes_brutas <- pib_total * (emissao_agropecuaria + emissao_industria + emissao_energia * (1 - energia_limpa) + emissao_residuos)
    
    # Redução de emissões por políticas
    reducao_emissoes <- subsidios_verdes * 0.4 + investimento_gov_verde * 0.3
    emissoes_liquidas <- max(emissoes_brutas - reducao_emissoes, 0)
    
    # Receita com imposto sobre carbono
    receita_carbono <- emissoes_liquidas * imposto_carbono
    
    # Crescimento ajustado do PIB
    taxa_crescimento <- taxa_crescimento_base + investimento_verde * 0.2 + subsidio_verde * 0.1
    
    # Temperatura aumenta com emissões acumuladas
    d_temp <- emissoes_liquidas * fator_temp_emissao
    
    # Energia limpa cresce com políticas verdes
    d_energia_limpa <- taxa_crescimento_energia_limpa + 0.05 * investimento_verde + 0.04 * subsidio_verde
    energia_limpa_nova <- min(energia_limpa + d_energia_limpa, 0.95)  # limite de 95%
    
    # Derivadas
    d_pib <- pib_total * taxa_crescimento
    d_emissoes <- emissoes_liquidas * 0.02
    
    list(c(d_pib, d_emissoes, d_temp, d_energia_limpa))
  })
}

# Estado inicial
estado_inicial <- c(
  pib = 9e12,               # R$ 9 trilhões
  emissoes = 2.42e9,        # 2,42 GtCO2e
  temp = 1.1,               # °C acima da média pré-industrial
  energia_limpa = 0.24      # 24% da matriz energética (dados 2021 Brasil)
)

# Rodar de 2021 a 2100
tempo <- seq(2021, 2100, by = 1)

# Resolver o sistema
solucao <- ode(y = estado_inicial, times = tempo, func = modelo_climatico_sfc, parms = params)
df <- as.data.frame(solucao)

# 📊 Plotar os resultados
library(gridExtra)

g1 <- ggplot(df, aes(x = time)) +
  geom_line(aes(y = pib / 1e12), color = "blue", size = 1) +
  labs(title = "PIB Brasileiro (R$ trilhões)", x = "Ano", y = "PIB")

g2 <- ggplot(df, aes(x = time)) +
  geom_line(aes(y = emissoes / 1e9), color = "red", size = 1) +
  labs(title = "Emissões de GEE (GtCO2e)", x = "Ano", y = "Emissões")

g3 <- ggplot(df, aes(x = time)) +
  geom_line(aes(y = temp), color = "orange", size = 1) +
  labs(title = "Aquecimento Global (Δ°C)", x = "Ano", y = "Temperatura")

g4 <- ggplot(df, aes(x = time)) +
  geom_line(aes(y = energia_limpa * 100), color = "green4", size = 1) +
  labs(title = "Energia Limpa na Matriz (%)", x = "Ano", y = "% Energia Limpa")

grid.arrange(g1, g2, g3, g4, ncol = 2)

# Modelo expandido
modelo_cenario <- function(t, state, parms) {
  with(as.list(c(state, parms)), {
    consumo <- pib * propensao_consumo
    investimento <- pib * propensao_investimento
    impostos <- pib * taxa_impostos
    investimento_gov_verde <- pib * investimento_verde
    subsidios_verdes <- pib * subsidio_verde
    
    pib_total <- consumo + investimento + investimento_gov_verde + subsidios_verdes + impostos
    emissoes_brutas <- pib_total * (emissao_agropecuaria + emissao_industria + emissao_energia * (1 - energia_limpa) + emissao_residuos)
    
    reducao_emissoes <- subsidios_verdes * 0.4 + investimento_gov_verde * 0.3
    emissoes_liquidas <- max(emissoes_brutas - reducao_emissoes, 0)
    
    d_pib <- pib_total * (taxa_crescimento_base + investimento_verde * 0.2 + subsidio_verde * 0.1)
    d_emissoes <- emissoes_liquidas * 0.02
    d_temp <- emissoes_liquidas * fator_temp_emissao
    d_energia_limpa <- min(0.02 + 0.05 * investimento_verde + 0.04 * subsidio_verde, 0.95 - energia_limpa)
    
    list(c(d_pib, d_emissoes, d_temp, d_energia_limpa))
  })
}

# Estado inicial
estado_inicial <- c(
  pib = 9e12,
  emissoes = 2.42e9,
  temp = 1.1,
  energia_limpa = 0.24
)

# Tempo
tempo <- seq(2021, 2100)

# Parâmetros base comuns
base_params <- list(
  propensao_consumo = 0.6,
  propensao_investimento = 0.2,
  taxa_impostos = 0.15,
  taxa_crescimento_base = 0.03,
  emissao_agropecuaria = 0.25,
  emissao_industria = 0.10,
  emissao_energia = 0.18,
  emissao_residuos = 0.04,
  fator_temp_emissao = 0.0000000002
)

# Três cenários
cenarios <- list(
  forte = c(base_params, investimento_verde = 0.03, subsidio_verde = 0.05, imposto_carbono = 100),
  moderado = c(base_params, investimento_verde = 0.015, subsidio_verde = 0.025, imposto_carbono = 50),
  nulo = c(base_params, investimento_verde = 0, subsidio_verde = 0, imposto_carbono = 0)
)

# Simular os cenários
resultados <- lapply(cenarios, function(parms) {
  ode(y = estado_inicial, times = tempo, func = modelo_cenario, parms = parms)
})

# Converter para data.frames com rótulo de cenário
df_list <- Map(function(data, nome) {
  df <- as.data.frame(data)
  df$cenario <- nome
  df
}, resultados, names(resultados))

df_total <- do.call(rbind, df_list)

# 📊 Gráficos comparativos
p1 <- ggplot(df_total, aes(x = time, y = pib / 1e12, color = cenario)) +
  geom_line(size = 1.2) +
  labs(title = "PIB por Cenário (R$ trilhões)", x = "Ano", y = "PIB")

p2 <- ggplot(df_total, aes(x = time, y = emissoes / 1e9, color = cenario)) +
  geom_line(size = 1.2) +
  labs(title = "Emissões (GtCO2e)", x = "Ano", y = "Emissões")

p3 <- ggplot(df_total, aes(x = time, y = temp, color = cenario)) +
  geom_line(size = 1.2) +
  labs(title = "Temperatura Global (Δ°C)", x = "Ano", y = "°C")

p4 <- ggplot(df_total, aes(x = time, y = energia_limpa * 100, color = cenario)) +
  geom_line(size = 1.2) +
  labs(title = "Energia Limpa na Matriz (%)", x = "Ano", y = "%")

grid.arrange(p1, p2, p3, p4, ncol = 2)


# Modelo com danos climáticos
modelo_cenario_dano <- function(t, state, parms) {
  with(as.list(c(state, parms)), {
    # Fluxos
    consumo <- pib * propensao_consumo
    investimento <- pib * propensao_investimento
    impostos <- pib * taxa_impostos
    investimento_gov_verde <- pib * investimento_verde
    subsidios_verdes <- pib * subsidio_verde
    
    pib_total <- consumo + investimento + investimento_gov_verde + subsidios_verdes + impostos
    emissoes_brutas <- pib_total * (emissao_agropecuaria + emissao_industria + emissao_energia * (1 - energia_limpa) + emissao_residuos)
    
    reducao_emissoes <- subsidios_verdes * 0.4 + investimento_gov_verde * 0.3
    emissoes_liquidas <- max(emissoes_brutas - reducao_emissoes, 0)
    
    # DANOS CLIMÁTICOS (exponencial quadrático com ΔT)
    fator_dano <- max(1 - beta_dano * temp^2, 0.5)  # mínimo de 50% da capacidade
    taxa_crescimento_real <- (taxa_crescimento_base + investimento_verde * 0.2 + subsidio_verde * 0.1) * fator_dano
    
    d_pib <- pib_total * taxa_crescimento_real
    d_emissoes <- emissoes_liquidas * 0.02
    d_temp <- emissoes_liquidas * fator_temp_emissao
    d_energia_limpa <- min(0.02 + 0.05 * investimento_verde + 0.04 * subsidio_verde, 0.95 - energia_limpa)
    
    list(c(d_pib, d_emissoes, d_temp, d_energia_limpa))
  })
}

# Estado inicial
estado_inicial <- c(
  pib = 9e12,
  emissoes = 2.42e9,
  temp = 1.1,
  energia_limpa = 0.24
)

# Tempo de simulação
tempo <- seq(2021, 2100)

# Parâmetros comuns
base_params <- list(
  propensao_consumo = 0.6,
  propensao_investimento = 0.2,
  taxa_impostos = 0.15,
  taxa_crescimento_base = 0.03,
  emissao_agropecuaria = 0.25,
  emissao_industria = 0.10,
  emissao_energia = 0.18,
  emissao_residuos = 0.04,
  fator_temp_emissao = 0.0000000002,
  beta_dano = 0.01  # dano de 1% por grau Celsius ao quadrado
)

# Cenários: forte, moderado, nulo
cenarios <- list(
  forte = c(base_params, investimento_verde = 0.03, subsidio_verde = 0.05, imposto_carbono = 100),
  moderado = c(base_params, investimento_verde = 0.015, subsidio_verde = 0.025, imposto_carbono = 50),
  nulo = c(base_params, investimento_verde = 0, subsidio_verde = 0, imposto_carbono = 0)
)

# Rodar simulações
resultados <- lapply(cenarios, function(parms) {
  ode(y = estado_inicial, times = tempo, func = modelo_cenario_dano, parms = parms)
})

# Organizar resultados
df_list <- Map(function(data, nome) {
  df <- as.data.frame(data)
  df$cenario <- nome
  df
}, resultados, names(resultados))

df_total <- do.call(rbind, df_list)

# Plotar
p1 <- ggplot(df_total, aes(x = time, y = pib / 1e12, color = cenario)) +
  geom_line(size = 1.2) + labs(title = "PIB com Danos Climáticos", x = "Ano", y = "PIB (R$ trilhões)")

p2 <- ggplot(df_total, aes(x = time, y = temp, color = cenario)) +
  geom_line(size = 1.2) + labs(title = "Temperatura Global (Δ°C)", x = "Ano", y = "°C")

p3 <- ggplot(df_total, aes(x = time, y = emissoes / 1e9, color = cenario)) +
  geom_line(size = 1.2) + labs(title = "Emissões (GtCO₂e)", x = "Ano", y = "Emissões")

p4 <- ggplot(df_total, aes(x = time, y = energia_limpa * 100, color = cenario)) +
  geom_line(size = 1.2) + labs(title = "Energia Limpa (%)", x = "Ano", y = "%")

grid.arrange(p1, p2, p3, p4, ncol = 2)


# Salvar resultados no disco
write.csv(df_total, "resultados_modelo_sfc_climatico_brasil_2021_2100.csv", row.names = FALSE)


modelo_cenario_dano_social <- function(t, state, parms) {
  with(as.list(c(state, parms)), {
    consumo <- pib * propensao_consumo
    investimento <- pib * propensao_investimento
    impostos <- pib * taxa_impostos
    investimento_gov_verde <- pib * investimento_verde
    subsidios_verdes <- pib * subsidio_verde

    pib_total <- consumo + investimento + investimento_gov_verde + subsidios_verdes + impostos
    emissoes_brutas <- pib_total * (emissao_agropecuaria + emissao_industria + emissao_energia * (1 - energia_limpa) + emissao_residuos)
    reducao_emissoes <- subsidios_verdes * 0.4 + investimento_gov_verde * 0.3
    emissoes_liquidas <- max(emissoes_brutas - reducao_emissoes, 0)

    # Danos climáticos
    fator_dano <- max(1 - beta_dano * temp^2, 0.5)
    taxa_crescimento_real <- (taxa_crescimento_base + investimento_verde * 0.2 + subsidio_verde * 0.1) * fator_dano

    # Variáveis de interesse
    d_pib <- pib_total * taxa_crescimento_real
    d_emissoes <- emissoes_liquidas * 0.02
    d_temp <- emissoes_liquidas * fator_temp_emissao
    d_energia_limpa <- min(0.02 + 0.05 * investimento_verde + 0.04 * subsidio_verde, 0.95 - energia_limpa)

    # Indicadores sociais
    desemprego <- max(5, min(20, 12 - 50 * taxa_crescimento_real + 0.8 * temp))  # limite de 5% a 20%
    gini <- 0.55 - 0.1 * subsidio_verde - 0.05 * investimento_verde + 0.02 * temp  # desigualdade aumenta com temperatura

    return(list(c(d_pib, d_emissoes, d_temp, d_energia_limpa),
                desemprego = desemprego,
                gini = gini))
  })
}

resultados <- lapply(cenarios, function(parms) {
  ode(y = estado_inicial, times = tempo, func = modelo_cenario_dano_social, parms = parms)
})


# Exportar resultados com variáveis sociais
write.csv(df_total, "resultados_com_sociais_modelo_sfc_brasil_2021_2100.csv", row.names = FALSE)


# Gráfico do Desemprego
g5 <- ggplot(df_total, aes(x = time, y = desemprego, color = cenario)) +
  geom_line(size = 1.2) +
  labs(title = "Taxa de Desemprego (%)", x = "Ano", y = "Desemprego (%)") +
  theme_minimal()

# Gráfico do Índice de Gini
g6 <- ggplot(df_total, aes(x = time, y = gini, color = cenario)) +
  geom_line(size = 1.2) +
  labs(title = "Índice de Gini (Desigualdade)", x = "Ano", y = "Gini") +
  theme_minimal()

# Organizar todos os gráficos juntos
output$graficos1 <- renderPlot({
  grid.arrange(g1, g2, g3, g4, g5, g6, ncol = 2)
})

# Modelo com danos e variáveis sociais
modelo_sfc_clima <- function(t, state, parms) {
  with(as.list(c(state, parms)), {
    consumo <- pib * propensao_consumo
    investimento <- pib * propensao_investimento
    impostos <- pib * taxa_impostos
    investimento_gov_verde <- pib * investimento_verde
    subsidios_verdes <- pib * subsidio_verde
    
    pib_total <- consumo + investimento + investimento_gov_verde + subsidios_verdes + impostos
    emissoes_brutas <- pib_total * (emissao_agropecuaria + emissao_industria + emissao_energia * (1 - energia_limpa) + emissao_residuos)
    
    reducao_emissoes <- subsidios_verdes * 0.4 + investimento_gov_verde * 0.3
    emissoes_liquidas <- max(emissoes_brutas - reducao_emissoes, 0)
    
    fator_dano <- max(1 - beta_dano * temp^2, 0.5)
    taxa_crescimento_real <- (taxa_crescimento_base + investimento_verde * 0.2 + subsidio_verde * 0.1) * fator_dano
    
    d_pib <- pib_total * taxa_crescimento_real
    d_emissoes <- emissoes_liquidas * 0.02
    d_temp <- emissoes_liquidas * fator_temp_emissao
    d_energia_limpa <- min(0.02 + 0.05 * investimento_verde + 0.04 * subsidio_verde, 0.95 - energia_limpa)
    
    desemprego <- max(5, min(20, 12 - 50 * taxa_crescimento_real + 0.8 * temp))
    gini <- 0.55 - 0.1 * subsidio_verde - 0.05 * investimento_verde + 0.02 * temp
    
    return(list(c(d_pib, d_emissoes, d_temp, d_energia_limpa),
                desemprego = desemprego,
                gini = gini))
  })
}

# Interface do usuário
ui <- fluidPage(
  titlePanel("Modelo SFC-Climático Brasil 2021–2100"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("invest", "Investimento Verde (% PIB)", 0, 0.05, 0.015, step = 0.005),
      sliderInput("subs", "Subsídio Verde (% PIB)", 0, 0.05, 0.025, step = 0.005),
      sliderInput("carbon", "Imposto sobre Carbono (R$/tCO2)", 0, 150, 50, step = 10),
      actionButton("run", "Simular")
    ),
    
    mainPanel(
      plotOutput("graficos1"),
      plotOutput("graficos2")
    )
  )
)

# Servidor
server <- function(input, output) {
  observeEvent(input$run, {
    parms <- list(
      propensao_consumo = 0.6,
      propensao_investimento = 0.2,
      taxa_impostos = 0.15,
      taxa_crescimento_base = 0.03,
      emissao_agropecuaria = 0.25,
      emissao_industria = 0.1,
      emissao_energia = 0.18,
      emissao_residuos = 0.04,
      fator_temp_emissao = 0.0000000002,
      beta_dano = 0.01,
      investimento_verde = input$invest,
      subsidio_verde = input$subs,
      imposto_carbono = input$carbon
    )
    
    estado_inicial <- c(
      pib = 9e12,
      emissoes = 2.42e9,
      temp = 1.1,
      energia_limpa = 0.24
    )
    
    tempo <- seq(2021, 2100)
    sim <- ode(y = estado_inicial, times = tempo, func = modelo_sfc_clima, parms = parms)
    df <- as.data.frame(sim)
    
    output$graficos1 <- renderPlot({
      par(mfrow = c(2, 2))
      plot(df$time, df$pib / 1e12, type = "l", col = "blue", ylab = "PIB (R$ trilhões)", xlab = "Ano")
      plot(df$time, df$emissoes / 1e9, type = "l", col = "red", ylab = "Emissões (GtCO2e)", xlab = "Ano")
      plot(df$time, df$temp, type = "l", col = "orange", ylab = "Temperatura (°C)", xlab = "Ano")
      plot(df$time, df$energia_limpa * 100, type = "l", col = "green4", ylab = "Energia Limpa (%)", xlab = "Ano")
    })
    
    output$graficos2 <- renderPlot({
      par(mfrow = c(1, 2))
      plot(df$time, df$desemprego, type = "l", col = "purple", ylab = "Desemprego (%)", xlab = "Ano")
      plot(df$time, df$gini, type = "l", col = "brown", ylab = "Índice de Gini", xlab = "Ano")
    })
  })
}

# Rodar o app
shinyApp(ui = ui, server = server)

# Função para tradução multilíngue
traduzir <- function(pt, en, idioma) {
  if (idioma == "English") return(en) else return(pt)
}

# Modelo com danos e variáveis sociais
modelo_sfc_clima <- function(t, state, parms) {
  with(as.list(c(state, parms)), {
    consumo <- pib * propensao_consumo
    investimento <- pib * propensao_investimento
    impostos <- pib * taxa_impostos
    investimento_gov_verde <- pib * investimento_verde
    subsidios_verdes <- pib * subsidio_verde
    
    pib_total <- consumo + investimento + investimento_gov_verde + subsidios_verdes + impostos
    emissoes_brutas <- pib_total * (emissao_agropecuaria + emissao_industria + emissao_energia * (1 - energia_limpa) + emissao_residuos)
    
    reducao_emissoes <- subsidios_verdes * 0.4 + investimento_gov_verde * 0.3
    emissoes_liquidas <- max(emissoes_brutas - reducao_emissoes, 0)
    
    fator_dano <- max(1 - beta_dano * temp^2, 0.5)
    taxa_crescimento_real <- (taxa_crescimento_base + investimento_verde * 0.2 + subsidio_verde * 0.1) * fator_dano
    
    d_pib <- pib_total * taxa_crescimento_real
    d_emissoes <- emissoes_liquidas * 0.02
    d_temp <- emissoes_liquidas * fator_temp_emissao
    d_energia_limpa <- min(0.02 + 0.05 * investimento_verde + 0.04 * subsidio_verde, 0.95 - energia_limpa)
    
    desemprego <- max(5, min(20, 12 - 50 * taxa_crescimento_real + 0.8 * temp))
    gini <- 0.55 - 0.1 * subsidio_verde - 0.05 * investimento_verde + 0.02 * temp
    
    # Garantindo que todas as variáveis sejam retornadas
    list(c(d_pib, d_emissoes, d_temp, d_energia_limpa), desemprego = desemprego, gini = gini)
  })
}

# Interface do usuário
ui <- fluidPage(
  titlePanel(traduzir("Modelo SFC-Climático Brasil 2021–2100", "SFC-Climate Model Brazil 2021–2100", input$idioma)),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("idioma", traduzir("Idioma", "Language", "Português"), choices = c("Português", "English"), selected = "Português"),
      sliderInput("invest", traduzir("Investimento Verde (% PIB)", "Green Investment (% GDP)", "Português"), 0, 0.05, 0.015, step = 0.005),
      sliderInput("subs", traduzir("Subsídio Verde (% PIB)", "Green Subsidy (% GDP)", "Português"), 0, 0.05, 0.025, step = 0.005),
      sliderInput("carbon", traduzir("Imposto sobre Carbono (R$/tCO2)", "Carbon Tax (R$/tCO2)", "Português"), 0, 150, 50, step = 10),
      actionButton("run", traduzir("Simular", "Simulate", "Português"))
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel(traduzir("Gráficos", "Graphs", "Português"),
                 plotOutput("graficos1"),
                 plotOutput("graficos2")
        ),
        tabPanel(traduzir("Exportar Dados", "Export Data", "Português"),
                 downloadButton("baixar_csv", traduzir("Baixar CSV com Resultados", "Download Results CSV", "Português"))
        )
      )
    )
  )
)

# Servidor
server <- function(input, output) {
  valores <- reactiveValues(df = NULL)
  
  observeEvent(input$run, {
    parms <- list(
      propensao_consumo = 0.6,
      propensao_investimento = 0.2,
      taxa_impostos = 0.15,
      taxa_crescimento_base = 0.03,
      emissao_agropecuaria = 0.25,
      emissao_industria = 0.1,
      emissao_energia = 0.18,
      emissao_residuos = 0.04,
      fator_temp_emissao = 0.0000000002,
      beta_dano = 0.01,
      investimento_verde = input$invest,
      subsidio_verde = input$subs,
      imposto_carbono = input$carbon
    )
    
    estado_inicial <- c(
      pib = 9e12,
      emissoes = 2.42e9,
      temp = 1.1,
      energia_limpa = 0.24
    )
    
    tempo <- seq(2021, 2100)
    sim <- ode(y = estado_inicial, times = tempo, func = modelo_sfc_clima, parms = parms)
    df <- as.data.frame(sim)
    valores$df <- df
    
    output$graficos1 <- renderPlot({
      par(mfrow = c(2, 2))
      plot(df$time, df$pib / 1e12, type = "l", col = "blue", ylab = traduzir("PIB (R$ trilhões)", "GDP (R$ Trillions)", input$idioma), xlab = "Ano")
      plot(df$time, df$emissoes / 1e9, type = "l", col = "red", ylab = traduzir("Emissões (GtCO2e)", "Emissions (GtCO2e)", input$idioma), xlab = "Ano")
      plot(df$time, df$temp, type = "l", col = "orange", ylab = traduzir("Temperatura (°C)", "Temperature (°C)", input$idioma), xlab = "Ano")
      plot(df$time, df$energia_limpa * 100, type = "l", col = "green4", ylab = traduzir("Energia Limpa (%)", "Clean Energy (%)", input$idioma), xlab = "Ano")
    })
    
    output$graficos2 <- renderPlot({
      par(mfrow = c(1, 2))
      plot(df$time, df$desemprego, type = "l", col = "purple", ylab = traduzir("Desemprego (%)", "Unemployment (%)", input$idioma), xlab = "Ano")
      plot(df$time, df$gini, type = "l", col = "brown", ylab = traduzir("Índice de Gini", "Gini Index", input$idioma), xlab = "Ano")
    })
  })
  
  output$baixar_csv <- downloadHandler(
    filename = function() {
      paste0("resultados_sfc_", Sys.Date(), ".csv")
    },
    content = function(file) {
      write.csv(valores$df, file, row.names = FALSE)
    }
  )
}

# Rodar o app
shinyApp(ui = ui, server = server)

rsconnect::setAccountInfo(name='SEU_USUARIO', token='SEU_TOKEN', secret='SEU_SECRET')


rsconnect::deployApp('CAMINHO/DO/SEU/APP')

rsconnect::deployApp('~/Documentos/SFC-App')

mainPanel(
  tabsetPanel(
    tabPanel("Gráficos",
             plotOutput("graficos1"),
             plotOutput("graficos2")
    ),
    tabPanel("Exportar Dados",
             downloadButton("baixar_csv", "📥 Baixar CSV com Resultados")
    )
  )
)

valores <- reactiveValues(df = NULL)

observeEvent(input$run, {
  ...
  valores$df <- df
})

output$baixar_csv <- downloadHandler(
  filename = function() {
    paste0("resultados_sfc_", Sys.Date(), ".csv")
  },
  content = function(file) {
    write.csv(valores$df, file, row.names = FALSE)
  }
)


selectInput("idioma", "Language / Idioma:", choices = c("Português", "English"), selected = "Português")


traduzir <- function(pt, en, idioma) {
  if (idioma == "English") return(en) else return(pt)
}

labs(title = traduzir("PIB com Danos Climáticos", "GDP with Climate Damages", input$idioma))


library(shiny)
library(deSolve)
library(ggplot2)

# Função para tradução multilíngue
traduzir <- function(pt, en, idioma) {
  if (idioma == "English") return(en) else return(pt)
}

# Modelo com danos e variáveis sociais
modelo_sfc_clima <- function(t, state, parms) {
  with(as.list(c(state, parms)), {
    consumo <- pib * propensao_consumo
    investimento <- pib * propensao_investimento
    impostos <- pib * taxa_impostos
    investimento_gov_verde <- pib * investimento_verde
    subsidios_verdes <- pib * subsidio_verde
    
    pib_total <- consumo + investimento + investimento_gov_verde + subsidios_verdes + impostos
    emissoes_brutas <- pib_total * (emissao_agropecuaria + emissao_industria + emissao_energia * (1 - energia_limpa) + emissao_residuos)
    
    reducao_emissoes <- subsidios_verdes * 0.4 + investimento_gov_verde * 0.3
    emissoes_liquidas <- max(emissoes_brutas - reducao_emissoes, 0)
    
    fator_dano <- max(1 - beta_dano * temp^2, 0.5)
    taxa_crescimento_real <- (taxa_crescimento_base + investimento_verde * 0.2 + subsidio_verde * 0.1) * fator_dano
    
    d_pib <- pib_total * taxa_crescimento_real
    d_emissoes <- emissoes_liquidas * 0.02
    d_temp <- emissoes_liquidas * fator_temp_emissao
    d_energia_limpa <- min(0.02 + 0.05 * investimento_verde + 0.04 * subsidio_verde, 0.95 - energia_limpa)
    
    desemprego <- max(5, min(20, 12 - 50 * taxa_crescimento_real + 0.8 * temp))
    gini <- 0.55 - 0.1 * subsidio_verde - 0.05 * investimento_verde + 0.02 * temp
    
    # Garantindo que todas as variáveis sejam retornadas
    list(c(d_pib, d_emissoes, d_temp, d_energia_limpa), desemprego = desemprego, gini = gini)
  })
}

# Interface do usuário
ui <- fluidPage(
  titlePanel(traduzir("Modelo SFC-Climático Brasil 2021–2100", "SFC-Climate Model Brazil 2021–2100", input$idioma)),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("idioma", traduzir("Idioma", "Language", "Português"), choices = c("Português", "English"), selected = "Português"),
      sliderInput("invest", traduzir("Investimento Verde (% PIB)", "Green Investment (% GDP)", "Português"), 0, 0.05, 0.015, step = 0.005),
      sliderInput("subs", traduzir("Subsídio Verde (% PIB)", "Green Subsidy (% GDP)", "Português"), 0, 0.05, 0.025, step = 0.005),
      sliderInput("carbon", traduzir("Imposto sobre Carbono (R$/tCO2)", "Carbon Tax (R$/tCO2)", "Português"), 0, 150, 50, step = 10),
      actionButton("run", traduzir("Simular", "Simulate", "Português"))
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel(traduzir("Gráficos", "Graphs", "Português"),
                 plotOutput("graficos1")
        ),
        tabPanel(traduzir("Exportar Dados", "Export Data", "Português"),
                 downloadButton("baixar_csv", traduzir("Baixar CSV com Resultados", "Download Results CSV", "Português"))
        )
      )
    )
  )
)

# Servidor
server <- function(input, output) {
  valores <- reactiveValues(df = NULL)
  
  observeEvent(input$run, {
    parms <- list(
      propensao_consumo = 0.6,
      propensao_investimento = 0.2,
      taxa_impostos = 0.15,
      taxa_crescimento_base = 0.03,
      emissao_agropecuaria = 0.25,
      emissao_industria = 0.1,
      emissao_energia = 0.18,
      emissao_residuos = 0.04,
      fator_temp_emissao = 0.0000000002,
      beta_dano = 0.01,
      investimento_verde = input$invest,
      subsidio_verde = input$subs,
      imposto_carbono = input$carbon
    )
    
    estado_inicial <- c(
      pib = 9e12,
      emissoes = 2.42e9,
      temp = 1.1,
      energia_limpa = 0.24
    )
    
    tempo <- seq(2021, 2100)
    sim <- ode(y = estado_inicial, times = tempo, func = modelo_sfc_clima, parms = parms)
    df <- as.data.frame(sim)
    valores$df <- df
    
    # Gráficos com ggplot2
    g1 <- ggplot(df, aes(x = time, y = pib / 1e12)) +
      geom_line(col = "blue") +
      labs(y = traduzir("PIB (R$ trilhões)", "GDP (R$ Trillions)", input$idioma), x = "Ano")
    
    g2 <- ggplot(df, aes(x = time, y = emissoes / 1e9)) +
      geom_line(col = "red") +
      labs(y = traduzir("Emissões (GtCO2e)", "Emissions (GtCO2e)", input$idioma), x = "Ano")
    
    g3 <- ggplot(df, aes(x = time, y = temp)) +
      geom_line(col = "orange") +
      labs(y = traduzir("Temperatura (°C)", "Temperature (°C)", input$idioma), x = "Ano")
    
    g4 <- ggplot(df, aes(x = time, y = energia_limpa * 100)) +
      geom_line(col = "green4") +
      labs(y = traduzir("Energia Limpa (%)", "Clean Energy (%)", input$idioma), x = "Ano")
    
    g5 <- ggplot(df, aes(x = time, y = desemprego)) +
      geom_line(col = "purple") +
      labs(y = traduzir("Desemprego (%)", "Unemployment (%)", input$idioma), x = "Ano")
    
    g6 <- ggplot(df, aes(x = time, y = gini)) +
      geom_line(col = "brown") +
      labs(y = traduzir("Índice de Gini", "Gini Index", input$idioma), x = "Ano")
  
    
    output$graficos2 <- renderPlot({
      grid.arrange(g5, g6, ncol = 2)
    })
  })
  
  output$baixar_csv <- downloadHandler(
    filename = function() {
      paste0("resultados_sfc_", Sys.Date(), ".csv")
    },
    content = function(file) {
      write.csv(valores$df, file, row.names = FALSE)
    }
  )
}

# Rodar o app
shinyApp(ui = ui, server = server)
