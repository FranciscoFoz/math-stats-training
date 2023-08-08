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







