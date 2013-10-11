#--------------------------------------------------------------------------------------------------
# Comparando distribuicoes com o Qui-quadrado
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
#
#--------------------------------------------------------------------------------------------------

# comparando tempo de florescimento de especies nativas e exoticas
 
df <- read.csv("flowering_alien_vs_indigen.csv", sep = ";") # o separador pode mudar de computador para computador
head(df)
names(df)

library(lattice) # este e outro pacote grafico disponivel para o R
 
histogram(~ Flowering|Status, data = df, col = "gray60", layout = c(1, 2),
          xlab = list("Mes de florecimento"),
          ylab = list("Percentual do total"),
          scales = list(y = list(alternating = F)),
          strip = strip.custom(factor.levels = c("alien", "indigenous")))
 
# E pelo teste Chi-quadrado.
m <- table(df$Status, df$Flowering)
 
(Xsq <- chisq.test(m)) # Resumo do teste
Xsq$observed # Valores observados (o mesmo que matriz m)
Xsq$expected # Valores esperados segundo hipótese nula
Xsq$residuals # Resíduos de Pearson
Xsq$stdres # Resíduos padronizados

