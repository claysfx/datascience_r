# ----- objetos -----

# atribuindo valores às variáveis
a <- 1
b <- 1
c <- -1

# mostrar variaveis: ls()

# print de variáveis: a ou print(a)

# resolvendo equações de segundo grau
# ax^2 + bx + c = 0 ---> x^2 + x - 1 = 0
solution_1 <- (-b + sqrt(b^2 - 4*a*c))/(2*a)
solution_2 <- (-b - sqrt(b^2 - 4*a*c))/(2*a)

print(solution_1)
solution_2

# ----- funções -----

log(8) # log natural de 8

log(x=8, base=2) # log de 8 na base 2, pois 2^3 = 8
log(8, 2)

log(a) # log natural de a <- 1
exp(a) # e^a

log(exp(a)) # log natural de e^a

# "ajudas" para funções:
help(log)
?log

# para saber os argumentos da função:
args(log)

# alguns datasets para treino:
data()
CO2 # exemplo de dataset

# ----- operadores matemáticos -----

#funções que não precisam de parenteses
2^3
pi

# ajuda sobre operadores:
help("+")
