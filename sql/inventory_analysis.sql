-- products that are below reorder level 
SELECT
    st.store_name,
    p.product_id,
    p.product_name,
    i.quantity AS current_stock,
    p.reorder_level 
FROM inventory i 
JOIN store st 
    ON i.store_id = st.store_id
JOIN product p 
    ON i.product_id = p.product_id 
WHERE i.quantity < p.reorder_level 
    AND p.is_active = TRUE
ORDER BY st.store_name, p.product_name;