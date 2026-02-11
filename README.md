# Análise de Vendas de Varejo com SQL (PostgreSQL)
# 📊 Dashboard de Performance de Vendas (E-commerce Analysis)

Este projeto demonstra a construção de um pipeline de análise de dados ponta a ponta, utilizando **SQL (PostgreSQL)** para a extração, limpeza e transformação de dados de varejo, visando a criação de uma camada semântica para visualização em ferramentas de BI (Tableau).

## 🏗️ Estrutura do Projeto

O projeto foi organizado seguindo as melhores práticas de engenharia de analytics, separando a infraestrutura da análise de negócios:

* **/sql_scripts**: Contém os scripts SQL organizados por ordem de execução.
    * `01_schema.sql`: Definição da estrutura da tabela (DDL) com tipos de dados otimizados.
    * `02_view_tableau.sql`: Criação de uma View para limpeza e cálculo de métricas (Camada Semântica).
    * `03_business_queries.sql`: Consultas focadas em insights de negócio e faturamento.
* **/outputs**: Relatórios exportados em CSV para consultas rápidas.
* **/docs**: Documentação técnica e dicionário de dados.

## 🛠️ Tecnologias Utilizadas

* **Banco de Dados:** PostgreSQL (via DBeaver)
* **Controle de Versão:** Git & GitHub
* **Análise de Negócio:** SQL Avançado (Window Functions, CTEs, Aggregations)
* **Visualização (Próximo Passo):** Tableau

## 📈 Insights Extraídos

1.  **Perfil Demográfico:** Identificação de faixas etárias dominantes e ticket médio por gênero.
2.  **Sazonalidade:** Detecção de meses de pico de venda por categoria (Eletrônicos, Vestuário, etc).
3.  **Performance de Produto:** Ranking de categorias mais rentáveis formatadas para relatórios executivos.

## 🚀 Como Replicar este Projeto

1. Clone o repositório: `git clone https://github.com/Mpierredev/analise-vendas-sql.git`
2. Execute o script `01_schema.sql` para criar a estrutura do banco.
3. Importe o dataset (Kaggle Retail Sales) para a tabela `retail_sales`.
4. Execute o script `02_view_tableau.sql` para gerar a visão limpa dos dados.
5. Utilize os scripts em `03_business_queries.sql` para explorar os dados.

---
*Status: Em desenvolvimento (Fase de Visualização de Dados pendente).*