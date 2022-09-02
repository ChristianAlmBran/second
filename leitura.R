#Vantagens e desvantagens 
##Formato Nativo: É mais rapido e ocupa menos espaço, porém não é 
##lido por outras linguagens de programação quando comparado com o
##formato csv
##Formato csv: É compativel com varias linguagens, porém é mais lento
##e ocupa mais espaço quando comparado com o formato nativo

pacman::p_load(microbenchmark)


# exporta outra base de dados em formato nativo do R
saveRDS(sinistrosRecife2021Raw, "bases_tratadas/sinistrosRecife2021.rds")


# exporta outra base de dados em formato tabular (.csv)
write.csv2(sinistrosRecife2021Raw, "bases_tratadas/sinistrosRecife2021.csv")


# carrega outra base de dados em formato nativo R
sinistrosRecife2021 <- readRDS('bases_tratadas/sinistrosRecife2021.rds')


# carrega outra base de dados em formato tabular (.csv)
sinistrosRecife2021 <- read.csv2('bases_tratadas/sinistrosRecife2021.csv', sep = ';')

# compara os dois processos de exportação com outras bases de dados, usando a função microbenchmark

microbenchmark(a <- saveRDS(sinistrosRecife2021Raw, "bases_tratadas/sinistrosRecife2021.rds"), b <- write.csv2(sinistrosRecife2021Raw, "bases_tratadas/sinistrosRecife2021.csv"), times = 30L)

microbenchmark(a <- readRDS('bases_tratadas/sinistrosRecife2021.rds'), b <- read.csv2('bases_tratadas/sinistrosRecife2021.csv', sep = ';'), times = 10L)
