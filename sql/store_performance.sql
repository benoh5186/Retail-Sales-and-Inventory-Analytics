-- stores that generate the most sales 
SELECT
    st.store_name,
    SUM(si.quantity * si.unit_sale_price) AS total_sales 
FROM store st 
JOIN sales s
    on st.store_id = s.store_id 
JOIN sale_items si 
    on s.sale_id = si.sale_id 
GROUP BY st.store_id, st.store_name
ORDER BY total_sales DESC;