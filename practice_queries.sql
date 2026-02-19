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

SELECT * FROM practice.orders;
SELECT 
    customer_id,
    order_date::date,
    total_amount::numeric
FROM practice.orders

UNION

SELECT
    customer_id,
    order_date::date,
    total_amount::numeric
FROM practice.orders_v2;

