# verificando o max nas colunas 1 até 7 da base mtcars
sapply(mtcars[ , 1:7], max)

# verificando o min nas colunas 1 até 7 da base mtcars
sapply(mtcars[ , 1:7], min)

# colocando em histogramas as colunas 1 até 4 da base mtcars
mapply(hist, mtcars[ , 1:4], MoreArgs=list(main = "Histograma", xlab = "valores", ylab = "frequência"))
