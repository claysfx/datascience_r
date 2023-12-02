# ----- data.table -----

# pack criado para evitar lixo de memória
install.packages("data.table")
library(data.table)

library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)

murders <- setDT(murders) #convertendo o dataframe em um objeto data.table

select(murders, state, region) %>% head() #em dplyr
murders[, c("state", "region")] |> head() #em data.table

# a notação .() informa que as variáveis dentro do parenteses
# são nomes de colunas, e não objetos do R, exemplo:
murders[, .(state, region)] |> head()

# adicionando colunas em dplyr
murders <- mutate(murders, rate = total/population*10^5)

# adicionando colunas em data.table -> update por referência
murders[, rate := total/population*10^5]
head(murders)

# adicionando +1 coluna
murders[, ":="(rate = total / population * 100000, rank = rank(population))]
head(murders)

# referencia -> y não será um "novo objeto", e sim um novo nome para x
x <- data.table(a = 1)
y <- x

x[,a:=2]
y # a 2

y[,a:=1]
x # a 1

# para forçar a criação de um novo objeto -> copy()

x <- data.table(a = 1)
y <- copy(x)
x[,a:=2]
y # a 1