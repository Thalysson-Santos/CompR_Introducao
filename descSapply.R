#--------------------------------------------------------------------------------------------------
# Estatistica descritiva
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
#
#--------------------------------------------------------------------------------------------------
data(mtcars)
names(mtcars)
dim(mtcars)
head(mtcars)

# Estatisticas basicas com sapply

sapply(mtcars, mean)
sapply(mtcars, min)
sapply(mtcars, max)
sapply(mtcars, var)
sapply(mtcars, sd)
