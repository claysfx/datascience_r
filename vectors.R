# ----- vetores -----

# função "c()", de "concatenate"

codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")
class(codes) #numeric
class(country) #character

# não há diferença em usar ou não as aspas
country_codes <- c(italy=380, canada=124, egypt=818)
country_codes <- c("italy"=380, "canada"=124, "egypt"=818)
class(country_codes) #numeric

# função "names()"

names(codes) <- country
codes

# função "seq()", de "sequence"

seq(1,10) # início, fim e incremento padrão 1
seq(1,10,2) # início, fim e incremento 2
1:10 # maneira abreviada

# subsetting -> acessar partes específicas do vetor

codes[2] #canada 124
codes[c(1,3)] #italy 380, egypt 818
codes[1:2] #italy 380, canada 124

# acessando com nomes
codes["canada"] #canada 124
codes[c("egypt","italy")] #egypt 818, italy 380

# conversão

x <- c(1, "brazil", 3)
class(x) #converteu 1 e 3 para character

y <- 1:5
y # 1 2 3 4 5
z <- as.character(y) #para caracteres
z # "1" "2" "3" "4" "5"
w <- as.numeric(z) #para números
w # 1 2 3 4 5

# missing data -> NA (not available)

x <- c("1", "b", "2")
y <- as.numeric(x) #Warning message: NAs introduzidos por coerção 
y # 1 NA 2

# tipos "numeric" e "integer"
class(1)
class(1L) #ocupa menos espaço de memória

# ----- sort, order e rank -----

library(dslabs)
data(murders)

sort(murders$total) #ordena o vetor na ordem crscente
# o estado com menor número de assassinatos tem 2, e o maior tem 1257

vetor <- c(31, 4, 15, 92, 65)
sort(vetor) # 4 15 31 65 92

# "order" seleciona um vetor e retorna os índices que ordenam este vetor

index <- order(vetor)
index # 2 3 1 5 4
vetor[index] # 4 15 31 65 92

# ATENÇÃO: vetores acessados com $ seguem a ordem das linhas:
murders$state[1:10]
murders$abb[1:10]

# ordenando de acordo com o index

index <- order(murders$total)
murders$abb[index] # Vermont com o menor / Califórnia com o maior

max(murders$total) #1257
i_max <- which.max(murders$total) #retorna o index do número
murders$state[i_max] #California

min(murders$total) #2
j_min <- which.min(murders$total)
murders$state[j_min] #Vermont

# função rank

vetor <- c(31, 4, 15, 92, 65)
rank(vetor) # 3 1 2 5 4, pois 31 é o terceiro menor valor, 15 o segundo...

# resumo das funções de sorting

vetor <- c(31, 4, 15, 92, 65)
sort(vetor) # 4 15 31 65 92
order(vetor) # 2 3 1 5 4
rank(vetor) # 3 1 2 5 4