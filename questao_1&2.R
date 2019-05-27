###
# QUESTÃO 1
###

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

###
# QUESTÃO 2
###


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




