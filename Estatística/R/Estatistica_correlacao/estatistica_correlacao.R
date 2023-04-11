#Estatística - Correlação
library(tidyverse)
library(lubridate)
library(ggplot2)


datas <- seq(from = as.Date("2022-01-01"), to = as.Date("2022-12-31"), by = "days")

#Gerando os valores aleatórios para o índice de precipitacao
precipitacao <- as.integer(rnorm(365, mean = 50, sd = 10))

#Gerando as visitas à biblioteca digital com base no índice de precipitacao
visitas <- precipitacao * 5 + rnorm(365, mean = 0, sd = 22) + 500
visitas <- as.integer(visitas)

#Criando um dataframe a partir do dicionário
df <- data.frame(data = datas, visitas_biblioteca_digital= visitas, precipitacao = precipitacao)

#Exibindo as primeiras linhas do dataframe
head(df)

#Gráfico de dispersão
ggplot(data = df, aes(x = visitas_biblioteca_digital, y = precipitacao)) +
      geom_point(color = "darkblue", size = 3) +
      labs(title = "Dispersão de Visitas a Biblioteca Digital X Índice de Precipitação", 
            x = "Visitas a biblioteca digital", y = "Índice de Precipitação")

#Covariância
cov(df[,2:3])
var(df[,3])



#Correlação apartir da covariância
cov_visitas_precipitacao <- cov(df[,2:3])['visitas_biblioteca_digital','precipitacao']
dp_visitas_biblioteca_digital <- df$visitas_biblioteca_digital %>% sd()
dp_precipitacao <- df$precipitacao %>% sd()
coeficiente_correlacao_pearson <- cov_visitas_precipitacao / (dp_visitas_biblioteca_digital * dp_precipitacao)
coeficiente_correlacao_pearson


#Correlação de Pearson
cor(df[,2:3])
cor(df[,c('visitas_biblioteca_digital','precipitacao')])

#Correlação de Spearman
cor(df[,2:3],method = "spearman")

#Correlação de Kendall
cor(df[,2:3],method = "kendall")
