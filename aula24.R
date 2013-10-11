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

# Modelo linear simples
plot(d$Braquiaria~d$Abertura)
reg = lm(Braquiaria~Abertura, data=d)
abline(reg)
summary(reg)
plot(reg)

# Modelo quadratico
plot(d$Braquiaria~d$Abertura)
reg2 = lm(Braquiaria~Abertura+I(Abertura^2), data=d)

# A função abline não funciona para modelos não lineares... assim podemos adicionar a linha de tendência usando
temp = data.frame(Abertura=seq(0,100,1))
lines(predict(reg2,temp))
summary(reg2)
plot(reg2)

# criar o modelo cubico
plot(d$Braquiaria~d$Abertura)
reg3 = lm(Braquiaria~Abertura+I(Abertura^2)+I(Abertura^3), data=d)
temp = data.frame(Abertura=seq(0,100,1))
lines(predict(reg3,temp))
summary(reg3)
plot(reg3)

# Braquiaria em funcao da serrapilheira
plot(d$Braquiaria~d$Serrapilheira)
reg4 = lm(Braquiaria~Serrapilheira, data=d)
abline(reg4)
summary(reg4)
plot(reg4)

# Braquiaria em funcao da serrapilheira sem o intercepto
plot(d$Braquiaria~d$Serrapilheira)
reg5 = lm(Braquiaria~Serrapilheira-1, data=d)
abline(reg5)
summary(reg5)
plot(reg5)
