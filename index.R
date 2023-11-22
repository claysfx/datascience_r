# ----- indexação -----

library(dslabs)
data(murders)

murder_rate <- murders$total/murders$population * 100000

#usando operadores lógicos para indexar vetores
index <- murder_rate < 0.71
murders$state[index] #Hawaii, Iowa, New Hampshire, North Dakota e Vermont
sum(index) #5

#operador lógico AND = &
west <- murders$region == "West"
safe <- murder_rate <= 1
index_westsafe <- safe & west
murders$state[index_westsafe] #Hawaii, Idaho, Oregon, Utah e Wyoming

# ----- funções which, match e %in% -----

# which
x <- c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)
which(x) #2 4 5, as entradas onde x é TRUE

index <- which(murders$state == "Massachusetts")
index #22, onde Massachusetts se encontra
murder_rate[index] #1.802, murder rate de Massachusetts

# match
index <- match(c("New York", "Florida", "Texas"), murders$state)
index #33 10 44, onde os estados se encontram
murder_rate[index] #murder rate de cada estado respectivamente

# %in%
x <- c("a", "b", "c", "d", "e")
y <- c("a", "d", "f")
y %in% x #TRUE TRUE FALSE, pois "a" e "d" do y está em x, diferente do "f"

c("Boston", "Dakota", "Washington") %in% murders$state #FALSE FALSE TRUE