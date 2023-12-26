# Distribuição normal

"
Um conjunto de dados segue uma distribuição aproximadamente normal, com média
1,7 e desvio padrão de 0,1.

Defina:
- Probabilidade uma pessoa x <1,8m
- Probabilidade uma pessoa 1,6< x <1,8m
- Probabilidade uma pessoa x>1,9m
"

# Probabilidade uma pessoa x <1,8m

pnorm(1.8, mean = 1.7, sd = 0.1, lower.tail = TRUE)

# Probabilidade uma pessoa 1,6< x <1,8m
(
  pnorm(1.8, mean = 1.7, sd = 0.1, lower.tail = TRUE) 
  - 
  pnorm(1.6, mean = 1.7, sd = 0.1, lower.tail = TRUE)
)
# Probabilidade uma pessoa x>1,9m

pnorm(1.9, mean = 1.7, sd = 0.1, lower.tail = FALSE)
