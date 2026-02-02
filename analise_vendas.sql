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

-- Análise de comportamento de compra por faixa etária e categoria
SELECT 
    CASE 
        WHEN "Age" BETWEEN 18 AND 30 THEN '18-30 (Jovens)'
        WHEN "Age" BETWEEN 31 AND 50 THEN '31-50 (Adultos)'
        ELSE '50+ (Sênior)'
    END AS faixa_etaria,
    "Product Category",
    SUM("Total Amount") AS total_gasto,
    COUNT(*) AS total_transacoes
FROM "retail_sales_dataset"
GROUP BY faixa_etaria, "Product Category"
ORDER BY faixa_etaria, total_gasto DESC;
