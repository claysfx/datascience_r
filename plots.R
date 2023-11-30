# ----- data visualization - plots -----

library(dplyr)
library(dslabs)
data("murders")

# scatterplot
population_in_millions <- murders$population/10^6
total_murders <- murders$total
plot(population_in_millions, total_murders)

# histograma
murders <- mutate(murders, rate = total/population*100000)
hist(murders$rate)

murders$state[which.max(murders$rate)]
#eixo x acima de 15 - District of Columbia

# boxplot
boxplot(rate~region, data=murders)
#south tem a maior taxa das regiões