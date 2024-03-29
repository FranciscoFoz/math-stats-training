# Cálculo do tamanho da amostra

# População infinita
"
Com o exemplo do rendimento mensal dos chefes de domicílio no Brasil, 
o supervisor determinou que o erro máximo em relação à média deverá ser de 
100 reais, o Desvio Padrão Populacional de 3.323,39 reais e 
nível de confiança de 95%, e com isso deveremos descobrir qual deverá 
ser o tamanho da amostra.
"

z <- qnorm(1-(0.05/2))
e <- 100
sigma <- 3323.39

n <- ((z * sigma) / e)**2
round(n)


# População finita
"
Foi realizada uma amostra aleatória simples de 100 latas e foi obtido o 
desvio padrão amostral do conteúdo de cada lata, igual a 12ml.

O fabricante estipula um erro máximo sobre a Média Populacional de apenas 5ml. 
Para garantirmos o Nível de Confiança de 95%, qual deve ser o tamanho da amostra?
"


N <- 10000
z <- qnorm(1-(0.05/2))
s <- 12
e <- 5

n <- ((z**2) * (s**2) * N) / (((z**2) * (s**2)) + (e**2) * (N-1))
round(n)



"
Suponha que você trabalhe em uma empresa com 500 funcionários e deseja realizar 
um estudo sobre a satisfação dos funcionários em relação ao ambiente de trabalho. 

Você deseja determinar o tamanho da amostra necessário para obter um erro máximo
sobre a média populacional de 2 pontos, com um nível de confiança de 90%. 

O desvio padrão amostral é estimado em 4 pontos.
"

N <- 500
z <- qnorm(1-(0.1/2))
s <- 12
e <- 4

n <- ((z**2) * (s**2) * N) / (((z**2) * (s**2)) + (e**2) * (N-1))
round(n)