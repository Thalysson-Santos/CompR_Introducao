
#--------------------------------------------------------------------------------------------------
# Exemplo de uso do teste t
#
# Gorgens, Eric Bastos
# Department of Forest Sciences
# University of Sao Paulo
# Piracicaba, Brazil
# gorgens (at) usp.br
#
#--------------------------------------------------------------------------------------------------


require(stats)
## Classical example: Student's sleep data
## Formula interface
t.test(extra ~ group, data = sleep)
