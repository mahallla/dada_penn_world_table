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

dados = readxl::read_excel("dados_originais.xlsx") 


### Limpeza dos dados

# Extrair o Brasil e as variaveis selecionadas do estudo

dados_brasil = subset(dados, country == 'Brazil',
                      select = c( "year",  "country", 
                                  "rgdpe", "rgdpo" , 
                                  "pop", "emp", 
                                  "avh", "hc", 
                                  "ccon", "cda", 
                                  "cgdpe", "cgdpo", 
                                  "cn", "ck", 
                                  "ctfp", "cwtfp" )) 


# Renomar colunas 


names(dados_brasil) = c("ano", "pais", 
                        "pib_real_despesas", "pib_real_producao", 
                        "populacao", "pessoas_ocupadas", 
                        "horas_trabalhadas_pessoas_contratadas_media_anual","indice_capital_humano", 
                        "consumo_real_familia_governo", "absorcao_domestica_real", 
                        "pib_real_despesa_ppps_dolares_2011", "pib_real_producao_ppps_dolares_2011", 
                        "estoque_capital_ppps_2011", "serviços_capital_ppps_dolar",
                        "produtividade_total_ppps_dolar", "produtividade_total_relevantes_bem_estar_PPPs_dolar"
)


#Exportador dados xlsx

write.xlsx(dados_brasil, file = "dados_brasil.xlsx")
