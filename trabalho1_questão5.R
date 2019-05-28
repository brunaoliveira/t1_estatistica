#Priscilla Overbeck de Oliveira

#QUESTÃO 5
# Seja a matriz de transição P a seguir, de três estados (classificação de clientes)
#A, B, C, considerados semestralmente.

# (a) (1.0) Obtenha P2. Interprete o valor da primeira linha, segunda coluna.
P <- matrix(c(.4,.3,.3, .3,.5,.2, .1,.2,.7), nrow = 3, byrow = TRUE)
rownames(P) <- colnames(P) <- LETTERS[1:nrow(P)]
P
(P2 <- P%*%P)


# (b) (1.0) Se há respectivamente 200, 300 e 500 em cada classe no instante zero,
# quantos clientes espera-se em cada classe após 3 passos? Considere o vetor v abaixo.
v <- c(200,300,500)
(v1 <- v%*%P)
(v2 <- v1%*%P)
(v3 <- v2%*%P)
