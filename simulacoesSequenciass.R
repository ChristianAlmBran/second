# iniciando a semente
tarefaSemente <- addTaskCallback(function(...) {set.seed(123);TRUE}) 
tarefaSemente

# criando uma distribui??o normal
distNormalSimulacao <- rnorm(550)

# criando uma distribui??o binomial 
distBinominalSimulacao <- rbinom(550, 1, 0.8)

# criando uma variavel de index
indexSimulacao <- seq(1, length(distNormalSimulacao))

#eliminando a fun??o TaskCallBack
removeTaskCallback(tarefaSemente)