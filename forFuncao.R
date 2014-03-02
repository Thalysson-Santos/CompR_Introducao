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

# Vamos combinar o looping FOR com a criação de uma função para ser chamada dentro de outra função.

# Importando os dados
nonlinear = read.csv("NonLinear.csv", sep=",", header=TRUE)
head(nonlinear)
summary(nonlinear)

# Definindo lista de progênies que irão participar da análise
lista = c(4,5,6,8,10,11,15,24,25,27,34,35,38,41,43,46,47,48,49,52,59,63,66,73,76,81)

# Ajustando o modelo de Richard por progênie e adiciona a curva ao gráfico de dispersão.

for (i in lista) {
  # cria um subset com os dados da progenie i
  temp = subset(nonlinear, progenie==i)
  
  # Ajusta o modelo de Richards para a progenie i
  chute_d = max(temp$diametro)
  func = nls(diametro~a*(1-exp(-b*idade))^c,data=temp, start=list(a=chute_d, b=0.05, c=1.0))
  
  # Salva os parametros da funcao de Richards
  cfunc = coef(func)
  
  # Cria o grafico de dispersao
  plot(temp$idade, temp$diametro, main = paste("Progênie = ",i), xlab = "Idade (anos)", ylab = "Diâmetro (cm)")
  
  # Cria uma funcao para implementar o modelo de Richards no comando curve()
  func2 <- function(x) {
    a<-cfunc[1] ; b<-cfunc[2] ; c<-cfunc[3]
    (a*(1-exp(-b*x))^c)
  }
  
  # Adiciona o respectivo modelo de Richard ao grafico de dispersao
  curve(func2, from=1, to=8,add=TRUE)
}
