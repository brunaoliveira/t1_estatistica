#Priscilla Overbeck de Oliveira
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
(LIp <- pf - e)               #limite inferior
(LSp <- pf + e)               #limite superior

