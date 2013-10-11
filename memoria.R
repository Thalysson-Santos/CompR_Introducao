#--------------------------------------------------------------------------------------------------
# Memória e histórico
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
#
#--------------------------------------------------------------------------------------------------

# Aula 7
#--------------------------------------------------------
# Manipulando objetdos na memória
a = 2
2 + 2
a + 2
b = a + a

ls() # retorna lista de objetos carregados na memória
rm(a) # deleta objeto a da memória
rm(list=ls(all=TRUE)) # limpa toda a memória

#--------------------------------------------------------
# Administrando histórico
history() # mostra os últimos 25 commandos
savehistory(file="myfile") # salva o histórico com a extensão padrão ".Rhistory"
loadhistory(file="myfile") # recupera um histórico salvo em extensão padrão ".Rhistory"
