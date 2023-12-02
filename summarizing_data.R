# ----- summarizing -----

library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)

murders <- mutate(murders, rate = total/population*10^5)

# mínimo, média e máximo da região Western

s <- murders %>% 
  filter(region == "West") %>%
  summarize(minimum = min(rate),
            median = median(rate),
            maximum = max(rate))
s #sumarrized table

s$median #é possível acessar as informações

# calcular a média dea forma abaixo é imprópria, pois alguns
# estados possuem uma população maior, logo um peso maior

mean(murders$rate)

# a forma mais justa de calcular a média, usando summarize

us_murder_rate <- murders %>%
  summarize(rate = sum(total)/sum(population) * 10^5)
us_murder_rate

# func quantile

murders %>%
  filter(region == 'West') %>%
  summarize(range = quantile(rate, c(0, 0.5, 1)))

# criando dataframe
my_quantile <- function(x){
  r <- quantile(x, c(0, 0.5, 1))
  data.frame(minimum = r[1], median = r[2], maximum = r[3])
}
murders %>%
  filter(region == 'West') %>%
  summarize(my_quantile(rate))

# função pull -> transformando dataframe em número

class(us_murder_rate) #data.frame

us_murder_rate <- murders %>%
  summarize(rate = sum(total)/sum(population) * 10^5) %>%
  pull(rate)
us_murder_rate

class(us_murder_rate) #numeric

# dot

us_murder_rate <- murders %>%
  summarize(rate = sum(total)/sum(population) * 10^5) %>%
  .$rate
us_murder_rate

class(us_murder_rate) #numeric

# ----- data exploration -----
# agrupar dados em partes para sumarizar

murders %>%
  group_by(region) %>%
  summarize(median = median(rate))

# func arrange -> ordenação em dataframes

# estados por população
murders %>% arrange(population) %>% head()

#estados por murder rate
murders %>% arrange(rate) %>% head()

#estados por murder rate (ordem decrescente -> desc())
murders %>% arrange(desc(rate)) %>% head()

#estados por região e, em seguida, murder rate
murders %>% arrange(region, rate) %>% head()

#top 10 murder rate
murders %>% arrange(desc(rate)) %>% top_n(10)