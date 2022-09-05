# carregando pacote
pacman::p_load(dplyr)

# carregando bases
cadastrosEscolasRecife_2014 <- read.csv2("http://dados.recife.pe.gov.br/dataset/eb2e99fa-7cd8-4d19-b58f-6e2cc011ee95/resource/e06c6c2b-9726-4c84-bfcb-aae6abb9faae/download/escolas2014.csv")

cadastrosEscolasRecife_2015 <- read.csv2("http://dados.recife.pe.gov.br/dataset/e9c0d2a3-9f5d-4a4e-815d-66c2e736c7e5/resource/bb8b70d4-4204-40d3-bc77-409a1651b8b9/download/escolas2015.csv")


cadastrosEscolasRecife_2014e2015 <- full_join(cadastrosEscolasRecife_2014, cadastrosEscolasRecife_2015, by = c('nome')) 
