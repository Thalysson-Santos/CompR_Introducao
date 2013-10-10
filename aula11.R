#--------------------------------------------------------------------------------------------------
# Comparando distribuicoes
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
#
# Last revision: 2013-06-22
#--------------------------------------------------------------------------------------------------

# comparando tempo de florescimento de especies nativas e exoticas
 
df <- read.csv("flowering_alien_vs_indigen.csv", sep = ";") # o separador pode mudar de computador para computador
head(df)
names(df)
