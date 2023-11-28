# Probabilidade


## Espaço amostral da mega-sena
combinacoes_mega_sena <- choose(60,6)
combinacoes_mega_sena

combinacoes_lotofacil <- choose(25,15)
combinacoes_lotofacil

probabilidade_acerto_lotofacil <- 1000/ combinacoes_lotofacil
probabilidade_acerto_lotofacil


## Distribuição Binomial
"
p = probabilidade de sucesso
q = (1-p) = probabilidade de fracasso
n = número de eventos estudados
k = número de eventos desejados que tenham sucesso

1. Realização de n ensaios idênticos
2. Os ensaios são independentes.
3. Somente dois resultados são possíveis, exemplo: Verdadeiro ou falso; Cara ou coroa; Sucesso ou Fracasso.
4. A probabilidade de sucesso é representada por p e a de fracasso por 1 - p = q. Estas probabilidades não se modificam de ensaio para ensaio.
"
### Exercício 1.
"
Título: Avaliação da Precisão na Classificação de Livros

Contexto: 
Imagine que você está trabalhando em uma biblioteca universitária 
e a equipe está implementando um novo sistema automatizado de classificação 
de livros com base em suas áreas temáticas. 
Esse sistema utiliza algoritmos para analisar o conteúdo dos livros e 
atribuir automaticamente a eles uma classificação de assunto.

Desafio:

A equipe está interessada em avaliar a precisão do sistema de classificação. 
Eles decidiram testar o sistema em uma amostra de 50 livros selecionados 
aleatoriamente da coleção. 
A taxa de sucesso do sistema, ou seja, a probabilidade de 
classificar corretamente um livro, é estimada em 0,75.

1. Qual é a probabilidade de que exatamente 40 livros sejam classificados corretamente pelo sistema?
2. Qual é a probabilidade de que pelo menos 45 livros sejam classificados corretamente pelo sistema?
3. Qual é a probabilidade de que no máximo 38 livros sejam classificados corretamente pelo sistema?
4. Qual é a probabilidade de que entre 41 e 48 livros (inclusive) sejam classificados corretamente pelo sistema?
"

# 1. Qual é a probabilidade de que exatamente 40 livros sejam classificados corretamente pelo sistema?
p <- 0.75
q <- 1 - p
n <- 50
k <- 40

cat("1. Qual é a probabilidade de que exatamente 40 livros sejam classificados corretamente pelo sistema?\n",
    round(dbinom(x = k, size = n, prob = p) * 100,2),
    "%")

# 2. Qual é a probabilidade de que pelo menos 45 livros sejam classificados corretamente pelo sistema?
p <- 0.75
q <- 1 - p
n <- 50
k <- 45

cat("2. Qual é a probabilidade de que pelo menos 45 livros sejam classificados corretamente pelo sistema?\n",
    round(sum(dbinom(x = k:n, size = n, prob = p)) * 100,2),
    "%")

cat("2. Qual é a probabilidade de que pelo menos 45 livros sejam classificados corretamente pelo sistema?\n",
    round(pbinom(q=44, size = n, prob = p,lower.tail = F) * 100,2),
    "%")

# 3. Qual é a probabilidade de que no máximo 38 livros sejam classificados corretamente pelo sistema?
p <- 0.75
q <- 1 - p
n <- 50
k <- 38

cat("2. Qual é a probabilidade de que pelo menos 45 livros sejam classificados corretamente pelo sistema?\n",
    round(sum(dbinom(x = 0:k, size = n, prob = p)) * 100,2),
    "%")

cat("2. Qual é a probabilidade de que pelo menos 45 livros sejam classificados corretamente pelo sistema?\n",
    round(pbinom(q=k, size = n, prob = p,lower.tail = T) * 100,2),
    "%")

# 4. Qual é a probabilidade de que entre 41 e 48 livros (inclusive) sejam classificados corretamente pelo sistema?
p <- 0.75
q <- 1 - p
n <- 50
k <- 48

cat("4. Qual é a probabilidade de que entre 41 e 48 livros (inclusive) sejam classificados corretamente pelo sistema?\n",
    round(sum(dbinom(x = 41:k, size = n, prob = p)) * 100,2),
    "%")

# 5. Você está interessado em calcular a probabilidade de ter um número específico de conversões em um determinado número de visitantes. 
# A taxa de conversão de visitantes para clientes em um site de comércio eletrônico é de 6%. Em um determinado dia, a empresa teve 500 visitantes.

# - Qual é a probabilidade de exatamente 50 desses visitantes se converterem em clientes?
# - Qual é a probabilidade de pelo menos 60 desses visitantes se converterem em clientes?
# - Qual é a probabilidade de no máximo 40 desses visitantes se converterem em clientes?

k <-50
size <- 500
prob <- 0.06
dbinom(k,size=size,prob = prob)

k <-60
size <- 500
prob <- 0.06
pbinom(k,size=size,prob = prob,lower.tail=T)

k <-40
size <- 500
prob <- 0.06
pbinom(k,size=size,prob = prob,lower.tail=T)





# 6. Você está analisando os resultados de um teste A/B realizado em um site para avaliar a eficácia de um novo design de página na taxa de cliques. 
# Na versão A (antiga), a taxa de cliques é de 12%. Na versão B (nova), a empresa espera que a taxa de cliques aumente para 15%.

# Suponha que você escolheu aleatoriamente 200 visitantes para participar do teste.

# - Qual é a probabilidade de exatamente 25 visitantes clicarem na versão A?
# - Qual é a probabilidade de no máximo 20 visitantes clicarem na versão A?

k <-25
size <- 200
prob <- 0.12
dbinom(k,size=size,prob = prob)

k <-20
size <- 200
prob <- 0.12
pbinom(k,size=size,prob = prob,lower.tail = T)


#- Qual é a probabilidade de pelo menos 30 visitantes clicarem na versão B?

k <-30
size <- 200
prob <- 0.15
pbinom(k,size=size,prob = prob,lower.tail = T)




# 7. Suponha que você está analisando a distribuição de cliques em anúncios online. 
# A taxa média de cliques em um anúncio específico é de 8%. Você está interessado em explorar a média e a variação dessa distribuição binomial.

# - Qual é o valor médio (esperança) do número de cliques em 500 visualizações desse anúncio?
# - Qual é o desvio padrão do número de cliques em 500 visualizações desse anúncio?

n <- 500
p <- 0.08

media <- n*p
desvio_padrao <- sqrt(n * p * (1 - p))
limite_inferior <- media - 2*desvio_padrao
limite_superior <- media + 2*desvio_padrao
cat("Probabilidade:",media,"Desvio Padrão:",desvio_padrao,
    "limite inferior",limite_inferior,"limite superior", limite_superior)

# 8. Um concurso possui uma prova com 15 questões de múltipla escolha, cada uma com 4 alternativas possíveis. 
# Um candidato decide chutar todas as respostas. Qual é a probabilidade de ele acertar exatamente 8 questões?


k <-8
size <- 15
prob <- 0.25
dbinom(k,size=size,prob = prob)
