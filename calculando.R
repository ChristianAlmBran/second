#isolando a coluna mpg da base mtcars
mpgMtcars <- mtcars$mpg

#centralizando o mpg
mpgMtcarsCentral <- mpgMtcars - mean(mpgMtcars)

#comparando os graficos
hist(mpgMtcars)
hist(mpgMtcarsCentral)

