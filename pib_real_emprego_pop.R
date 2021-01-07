## PIB real, niveis de emprego e populacao ##


### Limpar memoria 

rm(list = ls())

### Pacotes


library(dplyr)
library(readr)
library(scales)
library(data.table)
library(xlsx)

### Importar dados

dados = readxl::read_excel("dadost.xlsx") 


### Limpeza dos dados

# Extrair o Brasil e as variaveis selecionadas do estudo

dados_brasil = subset(dados, country == 'Brazil',
                      select = c( "year",  "country", "rgdpe", "rgdpo" , "pop", "emp", 
                                  "avh", "hc")) 

# Renomar colunas 


names(dados_brasil) = c("ano", "pais", "pib_real_despesas", "pib_real_producao
                    ", "populacao", "pessoas_ocupadas", 
                        "horas_trabalhadas_pessoas contratadas_media_anual", "indice_capital_humano
                    ")
#Exportador dados xlsx

write.xlsx(dados_brasil, file = "dados_brasil.xlsx")
