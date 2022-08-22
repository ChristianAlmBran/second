a <- 1
b <- 2
c <- 3

if (a > c) {
  print("a must be bigger than b")
} else {
  print("a must be smaller than b")
}

for (value in iris$Species) {
  print(value)
}

lapply(iris[, 1:3], hist)

