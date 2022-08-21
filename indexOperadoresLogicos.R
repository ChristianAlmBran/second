# criando dataframe
familyNamesAges <- data.frame (name = c("John", "Peter", "Ana"), 
                               age = c(45, 28, 12))

# recuperando os nomes
familyNamesAges$name

# recuperando as idades
familyNamesAges[ , 2]

# recuperando as duas primeiras linhas
familyNamesAges[1:2, ]
