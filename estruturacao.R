# carrega pacotes
pacman::p_load(data.table)
pacman::p_load(dplyr)
pacman::p_load(tidyverse)

# carrega a base
sinalCiclistas <- read.csv2('http://dados.recife.pe.gov.br/dataset/ab87d3e2-ea78-4f27-95fd-d7ef6f3b9ee5/resource/7b78550e-34a9-4b2e-a78b-a0c5023da853/download/semaforociclista.csv')

# filtrar e adicionar row
sinalCiclistas <- sinalCiclistas %>% 
  mutate(row = row_number()) %>%
  select(bairro, funcionamento, row)

#pivotando o data frame de long para wide
sinalCiclistasWide <- sinalCiclistas %>%
  pivot_wider(names_from = row, values_from = funcionamento) %>%
  remove_rownames %>% column_to_rownames(var = "bairro")
