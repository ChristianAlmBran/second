# criando fator
nacionalidade <- c(1, 2, 0, 1, 2, 2, 2, 2, 1, 0, 1, 1, 1, 1)
recode <- c(brasileiro = 1, estrangeiro = 2)
nacionalidade <- factor(nacionalidade, levels = recode, labels = names(recode))
view(nacionalidade)
