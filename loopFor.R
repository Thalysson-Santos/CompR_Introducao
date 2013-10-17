#--------------------------------------------------------------------------------------------------
# Looping FOR
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
##--------------------------------------------------------------------------------------------------


# O objetivo do looping é repetir uma determinada tarefa até que o objetico seja atingido


# Exercício problema 01
# Definindo lista de progênies que irão participar da análise
lista = c(4,5,6,8,10,11,15,24,25,27,34,35,38,41,43,46,47,48,49,52,59,63,66,73,76,81)

# Criando um gráfico para cada progênie listada acima
for (i in lista) {
  temp = subset(nonlinear, progenie==i)
  plot(temp$idade, temp$diametro, main = paste("Progenie = ",i), xlab = "Idade (anos)", ylab = "Diametro (cm)")
}
