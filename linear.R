#--------------------------------------------------------------------------------------------------
# Regressao linear
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
#
#--------------------------------------------------------------------------------------------------

# Neste arquivo temos o peso de serrapilheira e braquiaria (dividido em total e aéreo) e abertura de dossel.
# Deseja-se investigar se o nivel de abertura de dossel influencia no desenvolvimento da braquiaria.

d = read.csv("linear.csv", header=TRUE)

head(d)

# Braquiaria em funcao da abertura
plot(d$Braquiaria~d$Abertura)
reg = lm(Braquiaria~Abertura, data=d)
abline(reg)
summary(reg)
plot(reg)

# Braquiaria em funcao da abertura sem o intercepto
plot(d$Braquiaria~d$Abertura)
reg0 = lm(Braquiaria~Abertura-1, data=d)
abline(reg0)
summary(reg0)
plot(reg0)
