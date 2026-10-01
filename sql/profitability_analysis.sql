-- Products that generate the most gross profit 
SELECT 
    p.product_name,
    SUM(s.quantity * (s.unit_sale_price - p.unit_cost)) AS gross_profit
FROM products p 
JOIN sale_items s 
    ON p.product_id = s.product_id 
WHERE p.is_active = TRUE 
GROUP BY p.product_id
ORDER BY gross_profit DESC; 

