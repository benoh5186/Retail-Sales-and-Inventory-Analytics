# Retail-Sales-and-Inventory-Analytics

## Project Overview 

This is a small sql based project to simulate business analyst role 

The project analyzes simulates sales and inventory data for retail business(auto-parts for this project). The goal is to answer common business questions related to product performance, profitability, store performance, and inventory health using PostgreSQL.

## Business problem 

Management wants to know which products and stores are performing well, which items are at risk of running out of stock, and which products may be overstocked.

## Key Business Questions 

- Which products generate the most revenue?
- Which products generate the most gross profit?
- Which categories perform best?
- Which stores generate the most sales?
- Which products sell frequently but have low margins?
- Which products are below reorder level?
- Which products appear to be overstocked?

## Tech Stack

- PostgreSQL
- SQL
- DBeaver
- Git/GitHub

## Database structure
Tables:
- `categories`: product categories such as brakes, filters, batteries, and fluids
- `products`: product details, pricing, cost, and reorder levels
- `stores`: store/location information
- `sales`: transaction-level sales records
- `sale_items`: product-level line items for each sale
- `inventory`: current stock levels by store and product
