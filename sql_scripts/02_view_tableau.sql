CREATE OR REPLACE VIEW vw_dashboard_vendas AS
SELECT 
    transaction_id,
    sale_date,
    customer_id,
    gender,
    age,
    CASE 
        WHEN age < 20 THEN '18-20'
        WHEN age BETWEEN 20 AND 35 THEN '20-35'
        WHEN age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '50+'
    END AS age_group,
    product_category,
    quantity,
    total_amount,
    -- Cálculo de ticket médio por transação
    (total_amount / NULLIF(quantity, 0)) AS unit_price_calc
FROM retail_sales;