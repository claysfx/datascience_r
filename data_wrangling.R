# ----- data wrangling -----
# processo de converter dados em formas usaveis

library(dplyr) #pacote com funções de manipulação de dados

library(dslabs)
data("murders")

# acrescentando coluna rate - função mutate
murders <- mutate(murders, rate = total/population*100000)

# filtrando por parâmetros - função filter
filter(murders, rate <= 0.71)

# organizando colunas - função select
new_table <- select(murders, state, region, rate)
new_table
filter(new_table, rate <= 0.71)

# funções por "etapas" - pipe: %>%
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)

# ----- criação de dataframes -----

grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"),
                     exam_1 = c(95, 80, 90, 85),
                     exam_2 = c(90, 85, 85, 90))
grades

class(grades$names) #character

grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"),
                     exam_1 = c(95, 80, 90, 85),
                     exam_2 = c(90, 85, 85, 90),
                     stringsAsFactors = TRUE)
grades

class(grades$names) #factor