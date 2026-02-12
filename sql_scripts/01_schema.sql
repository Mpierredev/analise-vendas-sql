CREATE TABLE retail_sales (
    transaction_id INT PRIMARY KEY,
    sale_date DATE,
    customer_id VARCHAR(50),
    gender VARCHAR(20),
    age INT,
    product_category VARCHAR(50),
    quantity INT,
    price_per_unit NUMERIC(10,2),
    total_amount NUMERIC(10,2)
);