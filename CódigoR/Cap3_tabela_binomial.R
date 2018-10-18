# Gera tabela com valores de binom(N,n)
tabela <- as.data.frame(  
          rbind( c(4, 2, choose(4,2)),
                 c(10, 4, choose(10,4)),
                 c(100, 10, choose(100,10)),
                 c(1000, 20, choose(1000,20)),
                 c(10000, 100, choose(10000,100))) )
colnames(tabela) <- c("N", "n", "binom(N,n)")
tabela