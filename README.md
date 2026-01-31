# Análise de Vendas de Varejo com SQL (PostgreSQL)

## 📌 Sobre o Projeto
Este projeto realiza uma Análise Exploratória de Dados em um conjunto de dados de vendas de varejo  retirado da plataforma Kaggle. O objetivo é identificar padrões de consumo, performance de categorias e comportamento demográfico dos clientes para gerar insights de negócio.

## 🛠️ Tecnologias Utilizadas
- **Banco de Dados:** PostgreSQL
- **Ferramenta de Query:** DBeaver
- **Dataset:** Retail Sales Dataset (Kaggle)

## 🔍 Principais Insights Obtidos
- **Liderança de Vendas:** A categoria de **Electronics** lidera o faturamento total ($156.905).
- **Equilíbrio de Gênero:** Não há uma disparidade significativa de gastos entre homens e mulheres nas categorias analisadas.
- **Tratamento de Dados:** Durante o projeto, foi necessário realizar a conversão de tipos (Casting) de strings para formatos de data no SQL para possibilitar a análise temporal.

## 🚀 Como Executar as Consultas
As sentenças SQL estão organizadas no arquivo `analise_vendas.sql` deste repositório.

## 📁 Estrutura do Projeto

- `analise_vendas.sql`: Scripts SQL com as queries de análise.
- `retail_sales_dataset.csv`: Dataset original bruto.
- `vendas_por_categoria.csv`: Relatório de faturamento por categoria.
- `faturamento_mensal.csv`: Evolução das vendas ao longo do tempo.
