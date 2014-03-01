#--------------------------------------------------------------------------------------------------
# Análise de correlação visual
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
#
#--------------------------------------------------------------------------------------------------
data(mtcars)
head(mtcars)

require(corrgram) # ativa pacote
# install.packages("corrgram") # Comando para instalar o pacote
corrgram(mtcars, order=TRUE, lower.panel=panel.shade,
         upper.panel=panel.pts, text.panel=panel.txt,
         main="Correlograma") 
