#Priscilla Overbeck de Oliveira

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
