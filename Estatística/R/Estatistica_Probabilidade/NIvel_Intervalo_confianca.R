# Nível e intervalo de confiança

"
Suponha que você esteja estudando o tempo de espera de um determinado serviço 
de atendimento ao cliente. Você coletou uma amostra aleatória de 50 tempos de 
espera e obteve uma média de 10 minutos. 
O desvio padrão populacional é desconhecido. 
Com base nesses dados, calcule um intervalo de confiança de 95% para a
média populacional dos tempos de espera
"

media_amostral <- 10
significancia <- 0.05
confianca <- qnorm(1-(significancia/2))
tamanho_amostra <- 50
sd_amostra <- 2


erro_padrao <- sd_amostra / sqrt(tamanho_amostra)


intervalo_confianca <- c(media_amostral - confianca * erro_padrao, 
                         media_amostral + confianca * erro_padrao)

intervalo_confianca



