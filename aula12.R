#--------------------------------------------------------------------------------------------------
# Pacote grafico padrao R
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
#
#--------------------------------------------------------------------------------------------------

# Exemplo 1 (fonte: http://ecologia.ib.usp.br/bie5782/doku.php?id=bie5782:03_apostila:05a-graficos)

# Os dados dentro do R podem ser armazenados em vetores, matrizes, data frames e listas
# Nem todas as estruturas de armazenamento sao compati?veis com todas as funcoes

# Vamos criar 3 vetores
riqueza <- c(15,18,22,24,25,30,31,34,37,39,41,45)
area <- c(2,4.5,6,10,30,34,50,56,60,77.5,80,85)
area.cate <- rep(c("pequeno", "grande"), each=6)

# Criando data frame a partir de coluna
d = data.frame(riqueza, area, area.cate)

# filtrando dados dentro de um data.frame
d$riqueza # retorna coluna de um data.frame
d[,c(2,3)] # retorna colunas 2 e 3 do data.frame
d[d$area.cate=="grande",] # retorna linhas que tenham categoria igual a "grande"

#--------------------------------------------------------
# Exemplo 2 (fonte: http://www.statmethods.net/graphs/creating.html)

# O R possui um conjunto de dados para demosntracao
# Este e um exemplo com matriz
data(mtcars)
head(mtcars)
names(mtcars)
