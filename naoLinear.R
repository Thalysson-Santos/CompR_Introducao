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


chute_d = max(nonlinear$diametro)
func = nls(diametro~a*(1-exp(-b*idade))^c,data=nonlinear, start=list(a=chute_d, b=0.05, c=1.0))
summary(func)

plot(temp$idade, temp$diametro, xlab = "Idade (anos)", ylab = "Diâmetro (cm)")
# Cria uma funcao para implementar o modelo de Richards no comando curve()
func2 <- function(x) {
  a<-cfunc[1] ; b<-cfunc[2] ; c<-cfunc[3]
  (a*(1-exp(-b*x))^c)
}
# Adiciona o respectivo modelo de Richard ao grafico de dispersao
curve(func2, from=1, to=8,add=TRUE)
