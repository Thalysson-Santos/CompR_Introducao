#--------------------------------------------------------------------------------------------------
# Estudo das pressuposicoes
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
#
#--------------------------------------------------------------------------------------------------

# Importando base
df = read.csv("lidar.csv", header=TRUE, sep="")
names(df)

#-------------------------------------------------------------
# Normalidade

# metodo grafico
qqnorm(df$Volume)
qqline(df$Volume)

#teste de Shapiro
shapiro.test(df$Volume)

#teste de Lilliefors
require(nortest)
lillie.test(df$Volume)

#-------------------------------------------------------------
# Homogeneidade de variancia

# Teste de Breusch-Pagan-Godfrey
require(lmtest)
bptest(Volume ~ Height, data=df)
