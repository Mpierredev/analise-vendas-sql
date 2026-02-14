# 📊 Retail Sales Analysis: SQL + Tableau Performance Dashboard

Este repositório apresenta um projeto de **Business Intelligence** ponta a ponta. A partir de um dataset bruto de varejo, realizei a modelagem de dados via SQL para construção de uma camada analítica, culminando em um dashboard executivo no Tableau para suporte à tomada de decisão.

## 🚀 Estrutura do Projeto

A arquitetura foi desenhada para garantir reprodutibilidade e organização profissional:

* **/sql_scripts**: Pipeline de dados contendo:
  * `01_schema.sql`: DDL para criação da estrutura do banco e tipagem de dados.
  * `02_view_tableau.sql`: Criação de Views para limpeza e regras de negócio (camada semântica).
  * `03_business_queries.sql`: Consultas exploratórias para validação de KPIs.
* **/tableau**: Arquivo de trabalho empacotado (`.twbx`) com o dashboard interativo.
* **/docs**: Documentação visual e evidências do projeto.
* **/outputs**: Resultados das análises exportados em CSV.

## 📂 Fonte dos Dados

Os dados foram obtidos através do **Kaggle** ([Retail Sales Dataset](https://www.kaggle.com/datasets/mohammadtalhasardar/retail-sales-dataset)).

> **Nota:** Por se tratar de uma base de dados internacional, optei por manter as nomenclaturas originais (em inglês) na modelagem e no dashboard para preservar a integridade da fonte e demonstrar familiaridade com termos técnicos globais.

## 🛠️ Tecnologias e Metodologias

* **Banco de Dados:** PostgreSQL (Modelagem, Views, Window Functions).
* **Visualização:** Tableau Desktop Professional (Design de Dashboards, KPIs e Storytelling).
* **Versionamento:** Git & GitHub (Fluxo de trabalho e documentação).

## 📈 Dashboard e Insights de Negócio

O faturamento total analisado foi de **$456,000.00**, apresentando os seguintes comportamentos críticos:

![Dashboard Preview](./docs/dashboard_final.png)

1.  **Sazonalidade:** Identificou-se um pico de vendas expressivo no mês de **Maio**, seguido por uma recuperação consistente no encerramento do ano.
2.  **Mix de Categorias:** A categoria de **Electronics** lidera o faturamento, seguida de perto por *Clothing* e *Beauty*, indicando um portfólio de produtos equilibrado.
3.  **Perfil Demográfico:** O público na faixa de **20-35 anos** representa a maior parcela do faturamento.
    * *Insight:* Estratégias de marketing digital e fidelização devem ser priorizadas para este segmento, que demonstrou o maior LTV (Lifetime Value) potencial.

## 🏁 Guia de Execução (Como reproduzir este projeto)

Para rodar este projeto na sua máquina local, siga as etapas abaixo:

### 1. Pré-requisitos
* **PostgreSQL** instalado.
* Um cliente SQL (recomendado: **DBeaver**).
* **Tableau Desktop** (para visualizar o arquivo `.twbx`).

### 2. Configuração do Banco de Dados
1.  Clone o repositório:
    ```bash
    git clone [https://github.com/Mpierredev/analise-vendas-sql.git](https://github.com/Mpierredev/analise-vendas-sql.git)
    ```
2.  Crie um banco de dados no PostgreSQL chamado `retail_db`.
3.  Execute o script `./sql_scripts/01_schema.sql` para criar a tabela `retail_sales`.

### 3. Ingestão e Transformação
1.  Importe o arquivo CSV do dataset para a tabela criada.
    * *Configuração de Importação:* Delimitador `,` (vírgula) e Encoding `UTF-8`.
2.  Execute o script `./sql_scripts/02_view_tableau.sql`.
    * *Objetivo:* Isso criará a View `vw_dashboard_vendas`, que contém as regras de negócio e tratamento de idades.
3.  (Opcional) Execute `./sql_scripts/03_business_queries.sql` para ver os dados brutos transformados em insights via SQL.

### 4. Visualização
1.  Navegue até a pasta `/tableau`.
2.  Abra o arquivo `Retail_Sales_Performance_Analysis_v1.twbx`.
3.  O dashboard abrirá com os dados já carregados (extrato) para interação imediata.

---
*Projeto desenvolvido por Márcio Pierre para portfólio de Análise de Dados.*