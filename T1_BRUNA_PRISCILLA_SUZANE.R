#Bruna Oliveira - Priscilla Overbeck de Oliveira - Suzane Job Menon

# QUESTÃO 1

install.packages("tidyverse")
library(tidyverse)

nomero <- function(name) {
  name = tolower(name)
  name = gsub(' ', '', name)
  total = 0
  name = match(unlist(strsplit(name, split="")), letters)
  
  for (i in name) {
    total = total + i 
  }
  return(total)
}

name = 'filipe zabala'
nomero(name)

###############################################

# QUESTÃO 2
# AINDA NÃO FOI REVISADA

#Utilize set.seed(m) e gere 10*m observações de uma normal de média m e desvio padrão s. 
#Faça o histograma e obtenha as principais medidas de posição dos valores simulados

name = 'bruna priscila suzane'
m = nomero(name)
s<-m/4
set.seed(m)

for (i in 1:10) {
  print(rnorm(m))
}
m
pnorm(m+s, mean = m, sd = s)
n=10*m
# Distribuição Normal ou gaussiana
par(mfrow=c(2,2))
curve(dnorm(x),-s,s,add = F, col = 'orange')

###############################################

# QUESTÃO 3

# Legenda: b - balanceado | nb - nao balanceado

# Pr(B) = 3/4
# Pr(B') = 1/4
b = 3/4
nb = 1/4

# Pr({6}|B)  = 1/6
# Pr({6}|B') = 1/4
face_6_b = 1/6
face_6_nb = 1/4

# B
# 1 | 3/18 = 1/6
# 2 | 3/18 = 1/6
# 3 | 3/18 = 1/6
# 4 | 3/18 = 1/6
# 5 | 3/18 = 1/6
# 6 | 3/18 = 1/6

# B'
# 1 | 1/12
# 2 | 1/6
# 3 | 1/6
# 4 | 1/6
# 5 | 1/6
# 6 | 3 * 1/12 = 1/4

# Pr({1}|B') + 1/6 + 1/6 + 1/6 + 1/6 + (3 * Pr({1}|B')) = 1
# 4 * Pr({1}|B') + 4/6 = 1
# 4 * Pr({1}|B') = 1/3
# Pr({1}|B') = 1/3 * 1/4
# Pr({1}|B') = 1/12
temp = 4 * 1/6
prob_face_1_nb = (1 - temp)/4
prob_face_1_nb

# Pr(B|{6}) = (Pr(B) * Pr({6}|B)) / (Pr(B) * Pr({6}|B)) + (Pr(B') * Pr({6}|B'))
#             (3/4 * 1/6) / ((3/4 * 1/6) + (1/4 * 1/4))
prob_b_face_6 = (3/4 * 1/6) / ((3/4 * 1/6) + (1/4 * 1/4))
prob_b_face_6

###############################################

# QUESTÃO 4
#1 - flamengo 17,2%
# 2 - corinthians 13,4%
# ...
# 6 - grêmio 4%
# ...
# 10 - inter 2,5%
# 2500 pessoas, a partir dos 10 anos,
# no primeiro trimestre de 2010 em 141 cidades
# 
# Construa um intervalo com 95% de confiança assintótico para a
# proporção universal de brasileiros que torcem pelo Flamengo.


n <- 2500
pf <- 430/n
z <- abs(qnorm(0.025))
(me <- z*sqrt(pf*(1-pf)/n))   #margem de erro
(LIp <- pf - me)               #limite inferior
(LSp <- pf + me) #limite superior

###############################################

# QUESTÃO 5
# Seja a matriz de transição P a seguir, de três estados (classificação de clientes)
# A, B, C, considerados semestralmente.

# (a) (1.0) Obtenha P2. Interprete o valor da primeira linha, segunda coluna.
P <- matrix(c(.4,.3,.3, .3,.5,.2, .1,.2,.7), nrow = 3, byrow = TRUE)
rownames(P) <- colnames(P) <- LETTERS[1:nrow(P)]
P
(P2 <- P%*%P)
(P3 <- P2%*%P)

# No semestre seguinte P2 a probabilidade de clientes transicionarem de classificação
# A para B aumenta em 0.03% em relação ao semestre corrente P.
# No entanto, essa probabilidade diminui 0.003% em P3.

# P   A   B   C
# A 0.4 0.3 0.3
# B 0.3 0.5 0.2
# C 0.1 0.2 0.7

# P2   A    B    C
# A 0.28 0.33 0.39
# B 0.29 0.38 0.33
# C 0.17 0.27 0.56

# P3    A     B     C
# A 0.250 0.327 0.423
# B 0.263 0.343 0.394
# C 0.205 0.298 0.497

# (b) (1.0) Se há respectivamente 200, 300 e 500 em cada classe no instante zero,
# quantos clientes espera-se em cada classe após 3 passos? Considere o vetor v abaixo.
v <- c(200,300,500)
(v1 <- v%*%P)    
(v2 <- v1%*%P)  #ou (v1 <- v%*%P2)
(v3 <- v2%*%P)  #ou (v2 <- v%*%P3)

#       A     B     C
# [v0] 200   300   500
# [v1] 220   310   470
# [v2] 228   315   457
# [v3] 231.4 317.3 451.3

