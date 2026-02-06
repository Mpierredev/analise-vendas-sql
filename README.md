# Análise de Vendas de Varejo com SQL (PostgreSQL)

## 📌 Sobre o Projeto
Este projeto realiza uma Análise Exploratória de Dados em um conjunto de dados de vendas de varejo retirado da plataforma Kaggle. O objetivo é identificar padrões de consumo, performance de categorias e comportamento demográfico dos clientes para gerar insights de negócio.

## 🛠️ Tecnologias Utilizadas
- **Banco de Dados:** PostgreSQL
- **Ferramenta de Query:** DBeaver
- **Dataset:** Retail Sales Dataset (Kaggle)

## 🔍 Principais Insights Obtidos
- **Liderança de Vendas:** A categoria de **Electronics** lidera o faturamento total ($156.905).
- **Equilíbrio de Gênero:** Não há uma disparidade significativa de gastos entre homens e mulheres nas categorias analisadas.
- **Segmentação Demográfica:** Identificação de padrões de compra específicos por faixas etárias (Jovens, Adultos e Sênior) em cada categoria de produto.
- **Tratamento de Dados:** Conversão de tipos (Casting) de strings para formatos de data no SQL, permitindo uma análise temporal precisa.
- **Sazonalidade por Categoria:** Identificação dos meses de pico de vendas para cada vertical, permitindo estratégias de estoque mais assertivas.

## 🚀 Como Executar as Consultas
As sentenças SQL estão organizadas no arquivo `analise_vendas.sql` na raiz deste repositório. Para reproduzir a análise, basta importar o dataset contido na pasta `/data` para o seu ambiente PostgreSQL.

## 📁 Estrutura do Repositório

- `analise_vendas.sql`: Script principal contendo todas as queries da análise.
- 📂 **data/**:
  - `retail_sales_dataset.csv`: Base de dados original (bruta) utilizada no projeto.
- 📂 **outputs/**:
  - `analise_de_comportamento_faixa_etaria.csv`: Cruzamento de dados entre faixas etárias e categorias de produtos.
  - `faturamento_formatado_por_categoria.csv`: Relatório de faturamento e volume por categoria.
  - `analise_faturamento_mensal.csv`: Evolução das vendas ao longo do tempo.
  - `media_de_idade_por_genero.csv`: Distribuição da média de idade por gênero dos clientes presentes no dataset.
  - `pico_mensal_de_vendas_por_categoria.csv`: Relatório dos meses recordistas de faturamento por produto.
