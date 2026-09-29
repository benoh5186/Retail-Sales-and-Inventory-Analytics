CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY, 
    product_name VARCHAR NOT NULL,
    category_id INTEGER NOT NULL REFERENCES categories(category_id),
    unit_cost NUMERIC(10, 2) NOT NULL,
    unit_price NUMERIC(10, 2) NOT NULL,
    reorder_level INT NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT TRUE 
);

CREATE TABLE store (
    store_id SERIAL PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
);

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    store_id INTEGER REFERENCES store(store_id),
    product_id INTEGER REFERENCES products(product_id),
    sale_date DATE DEFAULT 
);

CREATE TABLE sale_item (
    sale_item_id SERIAL PRIMARY KEY,
    sale_id INTEGER NOT NULL REFERENCES sales(sale_id),
    product_id INTEGER NOT NULL REFERENCES products(product_id),
    quantity INTEGER NOT NULL,
    unit_sale_price NUMERIC(10, 2) NOT NULL
);

CREATE TABLE inventory (
    store_id INTEGER NOT NULL REFERENCES store(store_id),
    product_id INTEGER NOT NULL REFERENCES products(product_id),
    quantity INTEGER NOT NULL,
    last_updated DATE NOT NULL,
    PRIMARY KEY (store_id, product_id)
);