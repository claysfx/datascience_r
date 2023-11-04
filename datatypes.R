# ----- datatypes -----

install.packages(c("tidyverse", "dslabs")) #instalando packs

# abrindo o pack "dslabs" e o dataframe "murders"
library(dslabs)
data(murders)

# verificando a classe do dataframe
class(murders)
# observando mais da estrutura
str(murders)
# mostra as 6 primeiras linhas
head(murders)

# usando o operador "accessor" para a coluna "population"
murders$population
# nome das colunas do dataframe
names(murders)
# quantas entradas existem no vetor
pop <- murders$population
length(pop)
# vetores numéricos ou caracteres
class(pop)
class(murders$state)

# vetores lógicos -> booleanos
z <- 3 == 2
z
class(z)

# outro tipo de classe: fator
class(murders$region)
# obtendo os fatores existentes
levels(murders$region)
# quantidade de fatores
nlevels(murders$region)

# função "identical" serve para verificar variáveis identicas
p <- murders$population
o <- murders[["population"]] 
identical(o, p) # retorno: TRUE

# ----- table -----

# essa função seleciona um vetor e retorna a frequencia de cada elemento

t <- c("a", "a", "b", "b", "b", "c") # c = concatenação
table(t)

# estados por região do dataset "murders"
table(murders$region)