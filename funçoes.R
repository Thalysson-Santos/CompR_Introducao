#--------------------------------------------------------------------------------------------------
# Criando funções
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
##--------------------------------------------------------------------------------------------------


# A função permite criar uma sequencia de código que será ativada conforme demanda do programador, 
# pegando entrada(s) e transformando num saída(s), a partir de parâmetros que influenciam seu comportamento.
# Uma função pode ser chamada dentro de outra função


#--------------------------------------------------------------------------------------------------
# Parte do Exercício 02

# Ajusta o modelo de Richards para a progenie i
chute_d = max(temp$diametro)
func = nls(diametro~a*(1-exp(-b*idade))^c,data=temp, start=list(a=chute_d, b=0.05, c=1.0))

# Salva os parametros da funcao de Richards
cfunc = coef(func)


func2 <- function(x) {
  a<-cfunc[1] ; b<-cfunc[2] ; c<-cfunc[3]
  (a*(1-exp(-b*x))^c)
}
 
 
