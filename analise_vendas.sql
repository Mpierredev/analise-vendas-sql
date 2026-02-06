-- Faturamento Formatado por Categoria
SELECT 
    "Product Category" AS categoria,
    COUNT("Transaction ID") AS total_vendas,
    '$ ' || TO_CHAR(SUM("Total Amount"), '999,999.99') AS faturamento_formatado
FROM "retail_sales_dataset"
GROUP BY categoria
ORDER BY SUM("Total Amount") DESC;

-- Levantamento da média de idade por Gênero
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

-- Identificação do mês de pico de vendas por categoria
WITH VendasMensais AS (
    SELECT 
        "Product Category",
        TO_CHAR("Date"::DATE, 'YYYY-MM') AS mes,
        SUM("Total Amount") AS faturamento_mensal
    FROM "retail_sales_dataset"
    GROUP BY "Product Category", mes
)
SELECT 
    "Product Category",
    mes_pico,
    faturamento_maximo
FROM (
    SELECT 
        "Product Category",
        mes AS mes_pico,
        faturamento_mensal AS faturamento_maximo,
        RANK() OVER(PARTITION BY "Product Category" ORDER BY faturamento_mensal DESC) as ranking
    FROM VendasMensais
) sub
WHERE ranking = 1
ORDER BY faturamento_maximo DESC;
