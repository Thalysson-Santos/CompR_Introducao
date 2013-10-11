#--------------------------------------------------------------------------------------------------
# Correlação e covariância
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

# Correlacoes e covariancia
cor(mtcars, method="spearman")
cor(mtcars, method="pearson")
cov(mtcars)
