# carregar pacotes
pacman::p_load(dplyr)

# carregar base 
iluminacaoPublicaRecife <- read.csv2("http://dados.recife.pe.gov.br/dataset/14460c28-c4cf-4141-bad5-b7f8e3be39c3/resource/2876b65a-afbd-4028-bd2e-510624270f34/download/cadastro-de-ip-maio-2022.csv")

# usando count - numero de postes por bairro
iluminacaoPublicaRecife %>% 
  count(bairro)

# usando group_by - agrupando por tipo de lampada e bairro
iluminacaoPublicaRecife %>%
  group_by(tipo_lampada, bairro)
  
# filtrando e retirando todas os postes com LED
iluminacaoPublicaRecife_2 <- iluminacaoPublicaRecife %>%
  filter(tipo_lampada != "LED")

# reordenando por consumo de energia 
iluminacaoPublicaRecife %>%
  arrange(consumo_kw)

# selecionando apenas quatro colunas
iluminacaoPublicaRecife %>%
  select(bairro, tipo_lampada, potencia, consumo_kw)

# mudando nome de coluna
iluminacaoPublicaRecife_3 <- iluminacaoPublicaRecife %>%
  rename(quantidade = qtde)
