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
JOIN products p 
    ON i.product_id = p.product_id 
WHERE i.quantity < p.reorder_level 
    AND p.is_active = TRUE
ORDER BY st.store_name, p.product_name;


-- Products that are overstocked: Readme gives a bit vague requirement as to the definition of "overstock" so I am going with reorder level times 3
SELECT 
    i.quantity,
    p.product_name,
    st.store_name
FROM inventory i 
JOIN products p 
    ON i.product_id = p.product_id
JOIN store st 
    ON i.store_id = st.store_id 
WHERE i.quantity > (p.reorder_level * 3)
    AND p.is_active = TRUE 
ORDER BY i.quantity DESC;