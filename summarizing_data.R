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