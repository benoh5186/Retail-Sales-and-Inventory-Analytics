INSERT INTO categories(category_name) 
VALUES 
    ('Brakes'),
    ('Engine'),
    ('Batteries'),
    ('Fluids'),
    ('Lighting');
        
INSERT INTO products (
    sku,
    product_name,
    category_id,
    unit_cost,
    unit_price,
    reorder_level
)
VALUES 
    ('BRK-001', 'Ceramic Brake Pads', 1, 22.00, 49.99, 10),
    ('ENG-001', 'Oil Filter', 2, 4.00, 9.99, 25),
    ('BAT-001', 'Standard Car Battery', 3, 65.00, 129.99, 5);


INSERT INTO store (store_name)
VALUES 
    ('Max Auto'),
    ('Dove Auto');

INSERT INTO sales(store_id, sale_date)
VALUES 
    (1, '2026-01-05'),
    (1, '2026-01-06'),
    (2, '2026-01-06'),
    (2, '2026-01-08'),
    (1, '2026-01-10');

INSERT INTO sale_items (sale_id, product_id, quantity, unit_sale_price)
VALUES
    (1, 1, 2, 49.99),
    (1, 2, 1, 9.99),
    (2, 3, 1, 129.99),
    (3, 2, 3, 9.49),
    (4, 1, 1, 44.99),
    (5, 2, 2, 9.99);

INSERT INTO inventory (store_id, product_id, quantity, last_updated)
VALUES 
    (1, 1, 8, '2026-01-31'),
    (1, 2, 40, '2026-01-31'),
    (1, 3, 3, '2026-01-31'),
    (2, 1, 15, '2026-01-31'),
    (2, 2, 12, '2026-01-31'),
    (2, 3, 9, '2026-01-31');