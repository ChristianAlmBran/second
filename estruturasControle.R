# criando as variaveis
a <- 1
b <- 2
c <- 3

# criando o loop no padrão if/else
if (a > c) {
  print("a must be bigger than b")
} else {
  print("a must be smaller than b")
}

# criando o loop no padrão for
for (value in iris$Species) {
  print(value)
}

# utilizando o lapply 
lapply(iris[, 1:3], hist)

