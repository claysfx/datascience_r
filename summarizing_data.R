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