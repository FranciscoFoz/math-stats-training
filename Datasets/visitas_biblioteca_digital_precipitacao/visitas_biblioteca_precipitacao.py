#Dataset de Visitas a Biblioteca Digital correlacionado ao índice de precipitação

import numpy as np
import pandas as pd

# Criando as datas
datas = pd.date_range(start='2022-01-01', end='2022-12-31')

# Gerando os valores aleatórios para o índice de precipitacao
precipitacao = np.random.normal(loc=50, scale=10, size=365).astype(int)

# Gerando as visitas à biblioteca digital com base no índice de precipitacao
visitas = precipitacao * 5 + np.random.normal(loc=0, scale=22, size=365) + 500
visitas = visitas.astype(int)

# Criando um dataframe a partir do dicionário
df = pd.DataFrame({'data': datas, 'visitas_biblioteca_digital': visitas, 'precipitacao': precipitacao})

# Exibindo as primeiras linhas do dataframe
df.to_csv('Datasets/visitas_biblioteca_digital_precipitacao/correlacao_visitas_biblioteca_precipitacao.csv',index=False,sep=';')