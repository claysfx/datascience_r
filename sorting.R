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