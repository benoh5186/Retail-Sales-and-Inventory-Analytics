-- Products that generate the most revenue
SELECT 
    p.product_name, 
    SUM(s.quantity * s.unit_sale_price) AS revenue 
FROM products p 
JOIN sale_items s 
    ON p.product_id = s.product_id
WHERE p.is_active = TRUE
GROUP BY p.product_id 
ORDER BY revenue DESC;
