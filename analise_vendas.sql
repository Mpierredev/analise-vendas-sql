-- Levantamento do faturamento total por categoria
SELECT 
    "Product Category", 
    SUM("Total Amount") AS faturamento_total,
    COUNT(*) AS total_vendas
FROM "retail_sales_dataset"
GROUP BY "Product Category"
ORDER BY faturamento_total DESC;

-- Levantamneto da média de idade por Gênero
SELECT 
    "Gender", 
    AVG("Age") AS media_idade
FROM "retail_sales_dataset"
GROUP BY "Gender";

-- Análise de faturamento mensal (Ordenado de Janeiro a Dezembro)
SELECT 
    TO_CHAR("Date"::DATE, 'YYYY-MM') AS mes, 
    SUM("Total Amount") AS faturamento_mensal
FROM "retail_sales_dataset"
GROUP BY mes
ORDER BY mes;
