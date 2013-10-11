#--------------------------------------------------------------------------------------------------
# Explorando distribuicoes atraves do pacote ggplot2
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
#
#--------------------------------------------------------------------------------------------------

# O ggplot2 é um pacote grafico opcional


# Verifica disponibilidade e se existir ativa o pacote ggplot2
require(ggplot2)

# Para este exemplo criaremos um data frame ficticio
set.seed(22136) # fixa o gerador de numeros aleatorio para que os resultados sejam iguais para todos

df <- rbind(data.frame(group='A', outcome=rnorm(n=200, mean=100, sd=20)),
   data.frame(group='B', outcome=rnorm(n=200, mean=105, sd=20)))

head(df) # exibe primeiras linhas do data frame
names(df) # exibe os nomes das variáveis do data frame

# criando um boxplot
ggplot(df, aes(group, outcome)) + geom_boxplot()

# criando um histograma
ggplot(df, aes(outcome)) +
geom_histogram(binwidth=15)

# criando um histograma por grupo
ggplot(df, aes(outcome)) +
geom_histogram(binwidth=10) +
facet_wrap(~group, nrow=2, ncol=1)

# Crie também os gráficos abaixo
# criando um histograma de densidade colorido por grupo
ggplot(df, aes(outcome, color=group)) +
geom_density()

# criando um grafico de frequencia colorido por grupo
ggplot(df, aes(outcome,color=group)) +
geom_freqpoly(binwidth=10) 
