CREATE TABLE practice.orders_v2 (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    order_total NUMERIC(10,2),
    order_date DATE DEFAULT CURRENT_DATE
);