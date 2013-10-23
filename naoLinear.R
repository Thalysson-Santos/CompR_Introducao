#--------------------------------------------------------------------------------------------------
# Ajustando um modelo de regressao nao linear
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
#
#--------------------------------------------------------------------------------------------------

# Trabalharemos com uma base de ANATRO de diferentes especies

# Importando os dados
nonlinear = read.csv("NonLinear.csv", sep=",", header=TRUE)
head(nonlinear)

# Criando um gráfico com todos os dados
plot(nonlinear$idade, nonlinear$diametro, main = "Geral", xlab = "Idade (anos)", ylab = "Diâmetro (cm)")

# Define chute inicial para o modelo não linear de Richards
chute_d = max(nonlinear$diametro)

# Ajusta modelo não linear de Richards.
func = nls(diametro~a*(1-exp(-b*idade))^c,data=nonlinear, start=list(a=chute_d, b=0.05, c=1.0))

# Análise de variância da regressão não linear.
summary(func)

