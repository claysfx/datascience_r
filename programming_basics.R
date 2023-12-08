# ----- condicionais -----

library(dslabs)
data(murders)
murder_rate <- murders$total/murders$population*10^5

# if-else
ind <- which.min(murder_rate)

if(murder_rate[ind] < 0.5){
  print(murders$state[ind])
} else{
  print("no state has murder rate that low")
} #vermont

if(murder_rate[ind] < 0.25){
  print(murders$state[ind])
} else{
  print("no state has murder rate that low")
} #no state has murder rate that low

# ifelse
a <- c(0, 1, 2, -4, 5)
result <- ifelse (a > 0, 1/a, NA)
result # NA, 1.0, 0.5, NA, 0.2

data("na_example")
sum(is.na(na_example)) #145 NA's

no_nas <- ifelse(is.na(na_example), 0, na_example)
sum(is.na(no_nas)) #0 NA's

# any-all
z <- c(TRUE, TRUE, FALSE)
any(z) #TRUE
all(z) #FALSE

z <- c(FALSE, FALSE, FALSE)
any(z) #FALSE
all(z) #FALSE

z <- c(TRUE, TRUE, TRUE)
any(z) #TRUE
all(z) #TRUE

# ----- funções -----

# função mean()
avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}
x <- 1:100
avg(x) #50.5

identical(mean(x), avg(x)) #TRUE

avg <- function(x, arithmetic=TRUE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}
x <- c(1:100)
avg(x) #50.5

avg <- function(x, arithmetic=FALSE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}
x <- c(1:100)
avg(x) #37.9