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