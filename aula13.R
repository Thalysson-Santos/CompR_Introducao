#--------------------------------------------------------------------------------------------------
# Pacote grafico básico do R
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
#
#--------------------------------------------------------------------------------------------------

# Fonte do exemplo: http://ecologia.ib.usp.br/bie5782/doku.php?id=bie5782:03_apostila:05a-graficos)

# Os dados dentro do R podem ser armazenados em vetores, matrizes, data frames e listas
# Nem todas as estruturas de armazenamento sao compati?veis com todas as funcoes

# Este e um exemplo com vetores
riqueza <- c(15,18,22,24,25,30,31,34,37,39,41,45)
area <- c(2,4.5,6,10,30,34,50,56,60,77.5,80,85)
area.cate <- rep(c("pequeno", "grande"), each=6)

area.cate
head(area.cate) # mostra o cabecalho e as primeiras linhas do arquivo

# Grafico de dispersao
?plot
plot(riqueza~area)
plot(area,riqueza) # escrita alternativa
plot(riqueza~area, xlab="Area (m²)", ylab="Riqueza", xlim=c(0,90), ylim=c(0,90), main="Riqueza = f(area)")




# Teste também os gráficos abaixo
# Linha de tendência
plot(riqueza~area, xlab="Area (m²)", ylab="Riqueza", xlim=c(0,90), ylim=c(0,90), main="Riqueza = f(area)")
abline(lm(riqueza~area))


# Boxplot
boxplot(riqueza~area.cate)
?boxplot

# Grafico de barras
barplot(riqueza)

# Histograma
?hist
hist(riqueza)
hist(riqueza, breaks=3)
