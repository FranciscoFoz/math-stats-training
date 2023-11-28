# Distribuição de Weibull

#### Desafio: Probabilidade de Vida Útil
"
Suponha que a vida útil, em anos, de uma lâmpada LED seja modelada por uma distribuição de Weibull com parâmetros:
  
- Parâmetro de forma (c): 2
- Parâmetro de escala (λ): 5 anos

Tarefas:
  
1. Determine a probabilidade de uma lâmpada LED durar até 5 anos.
2. Determine a probabilidade de uma lâmpada LED durar pelo menos 8 anos.
"

# Parâmetros da distribuição de Weibull
shape_parameter = 2
scale_parameter = 5

# Determine a probabilidade de uma lâmpada LED durar até 5 anos.
dweibull(5, shape_parameter, scale=scale_parameter)* 100













