#Estatística - Correlação
library(tidyverse)
library(lubridate)

datas <- seq(from = as.Date("2022-01-01"), to = as.Date("2022-12-31"), by = "days")

#Gerando os valores aleatórios para o índice de precipitacao
precipitacao <- as.integer(rnorm(365, mean = 50, sd = 10))

#Gerando as visitas à biblioteca digital com base no índice de precipitacao
visitas <- precipitacao * 5 + rnorm(365, mean = 0, sd = 22) + 500
visitas <- as.integer(visitas)

#Criando um dataframe a partir do dicionário
df <- data.frame(data = datas, visitas = visitas, precipitacao = precipitacao)

#Exibindo as primeiras linhas do dataframe
head(df)

