-- SELECT first_name, last_name, signup_date
-- FROM practice.customers
-- WHERE signup_date BETWEEN '2024-03-01' AND '2024-03-31';

-- SELECT column_name, data_type
-- FROM information_schema.columns
-- WHERE table_schema = 'practice'
-- AND table_name = 'orders';

-- SELECT column_name, data_type
-- FROM information_schema.columns
-- WHERE table_schema = 'practice'
-- AND table_name = 'orders_v2';

-- ALTER TABLE practice.orders_v2
-- RENAME COLUMN order_total TO total_amount;

-- SELECT * FROM practice.orders;
-- SELECT 
--     customer_id,
--     order_date::date,
--     total_amount::numeric
-- FROM practice.orders

-- UNION

-- SELECT
--     customer_id,
--     order_date::date,
--     total_amount::numeric
-- FROM practice.orders_v2;

-- SELECT * FROM practice.orders
-- WHERE order_date >= '2024-01-01' AND order_date < '2025-01-01';

-- SELECT customer_id, COUNT(*) as order_count
-- FROM practice.orders
-- GROUP BY customer_id;

-- SELECT customer_id, total_amount FROM practice.orders
-- ORDER BY total_amount DESC;

-- SELECT MAX(total_amount) AS max_order FROM practice.orders;

-- SELECT customer_id, COUNT(*) as order_count 
-- FROM practice.orders
-- GROUP BY customer_id
-- HAVING COUNT(*) > 2;

-- SELECT DATE_TRUNC('month', order_date) AS month, SUM(total_amount) AS total_revenue
-- FROM practice.orders
-- GROUP BY month
-- ORDER BY month;

-- SELECT *
-- FROM practice.orders
-- WHERE total_amount > (SELECT AVG(total_amount) FROM practice.orders);

-- Sort customers by number of orders
-- SELECT customer_id, COUNT(*) as order_count FROM practice.orders
-- GROUP BY customer_id
-- ORDER BY order_count DESC, customer_id;

-- Show customers with 2 or fewer orders
-- SELECT customer_id, COUNT(*) AS order_count
-- FROM practice.orders
-- GROUP BY customer_id
-- HAVING COUNT(*) < 3;

 -- Show all customers and their order counts (no filter)
 SELECT customer_id, COUNT(*) AS order_count
 FROM practice.orders
 GROUP BY customer_id
 ORDER BY order_count DESC;
 


