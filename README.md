# Limpeza dos dados da *Peen World Table*.
---

Este repositório contém o conjunto de dados disponível no *Peen World Table* referente ao Brasil, organizados e limpos. Aqui você vai encontrar, pronto para *download*, os dados em xlsx e o código utilizado para tratar os dados em .R. 

---

### 1. **Sobre o Banco de Dados:**

*[Peen World Table](https://www.rug.nl/ggdc/productivity/pwt/?lang=en)* é uma plataforma que disponibiliza dados como: níveis relativos de renda, produção, insumos e produtividade para um conjuto de 182 países de 1950 a 2017. 

### 2. **Processo de organização e limpeza:**

Por se tratar de um banco de dados internacional, todas as variaveis estão em inglês. Assim, o processo de organização e limpeza consistiu em:

  - Traduzir as variaveis (colunas) de acordo com o documento disponível no [Guia do Usuário do PWT 9.1](https://www.rug.nl/ggdc/docs/pwt91_user_guide_to_data_files.pdf) e as informações adicionais do *site*; e,
  - Renomear as colunas, já traduzidas, retirando as siglas e adicionando os nomes completos de cada uma das variáveis.
  
**_Observação_**: As linhas NA não foram retiradas. Caso o seu estudo precise omitir valores NA, basta rodar o cógido:
  
  ```
  dados_brasil <- na.omit(dados_brasil)
  
  ```
 
### 3. **_Software_ utilizado:**
  - R.

### 4. **Andamento do processo:**

- **PIB real, níveis de emprego e população:**

:white_check_mark: PIB real do lado da despesa em PPPs encadeadas (em US $ mil. 2011).
:white_check_mark: PIB real do lado da produção em PPPs encadeadas (em US $ mil. 2011).
:white_check_mark: População (em milhões).
:white_check_mark: Número de pessoas ocupadas (em milhões).
:white_check_mark: Média anual de horas trabalhadas por pessoas contratadas.
:white_check_mark: Índice de capital humano, baseado em anos de escolaridade e retornos à educação.

- **Preço atual PIB, capital e produtividade total dos fatores:**

- [ ] Consumo real das famílias e do governo, nas PPPs atuais (em mil. US $ 2011)
- [ ] Absorção doméstica real, consumo real mais investimento, nas PPPs atuais (em US $ mil. 2011)
- [ ] PIB real do lado da despesa nas PPPs atuais (em US $ mil. 2011)
- [ ] PIB real do lado da produção nas PPPs atuais (em US $ mil. 2011)
- [ ] Estoque de capital nas PPPs atuais (em US $ mil. 2011)
- [ ] Níveis de serviços de capital nas PPPs atuais (EUA = 1)
- [ ] Nível de produtividade Total dos fatores nos PPPs atuais (EUA = 1)
- [ ] Níveis de produtividade Total dos fatores relevantes para o bem-estar nas PPPs atuais (EUA = 1)



 
