-- ==========================================
-- practice_data.sql
-- Sample data + practice queries
-- Safe to run repeatedly
-- ==========================================
INSERT INTO practice.customers (first_name, last_name, email, signup_date)
VALUES
('Ava', 'Thompson', 'ava.thompson@example.com', '2024-01-12'),
('Liam', 'Rodriguez', 'liam.rod@example.com', '2024-02-03'),
('Mia', 'Chen', 'mia.chen@example.com', '2024-02-15'),
('Noah', 'Patel', 'noah.patel@example.com', '2024-03-01'),
('Emma', 'Garcia', 'emma.garcia@example.com', '2024-03-18'),
('Oliver', 'Kim', 'oliver.kim@example.com', '2024-04-02'),
('Sophia', 'Davis', 'sophia.davis@example.com', '2024-04-20'),
('Ethan', 'Lopez', 'ethan.lopez@example.com', '2024-05-05'),
('Isabella', 'Martinez', 'isabella.martinez@example.com', '2024-05-22'),
('James', 'Wilson', 'james.wilson@example.com', '2024-06-01');

INSERT INTO practice.products (product_name, category, price)
VALUES
('Wireless Mouse', 'Electronics', 24.99),
('Mechanical Keyboard', 'Electronics', 79.99),
('USB-C Cable', 'Electronics', 9.99),
('Noise-Canceling Headphones', 'Electronics', 129.99),
('Water Bottle', 'Home', 14.99),
('Yoga Mat', 'Fitness', 29.99),
('Running Shoes', 'Fitness', 89.99),
('Backpack', 'Accessories', 49.99),
('Desk Lamp', 'Home', 34.99),
('Notebook Set', 'Office', 12.99),
('Ballpoint Pen Pack', 'Office', 5.99),
('Laptop Stand', 'Electronics', 39.99);

INSERT INTO practice.orders (customer_id, order_date, total_amount)
VALUES
(1, '2024-02-01', 34.98),
(2, '2024-02-10', 79.99),
(3, '2024-02-20', 24.98),
(4, '2024-03-05', 129.99),
(5, '2024-03-22', 49.98),
(6, '2024-04-10', 89.99),
(7, '2024-04-25', 144.98),
(8, '2024-05-08', 19.98),
(9, '2024-05-28', 129.99),
(10, '2024-06-03', 59.98),
(1, '2024-06-15', 79.99),
(2, '2024-06-20', 49.99),
(3, '2024-06-25', 99.98),
(4, '2024-07-01', 14.99),
(5, '2024-07-10', 169.98),
(6, '2024-07-18', 39.99),
(7, '2024-07-22', 24.99),
(8, '2024-07-30', 89.99),
(9, '2024-08-05', 29.99),
(10, '2024-08-12', 49.99),
(1, '2024-08-20', 129.99),
(2, '2024-08-25', 19.98),
(3, '2024-09-01', 59.98),
(4, '2024-09-10', 39.99),
(5, '2024-09-15', 89.99);

INSERT INTO practice.order_items (order_id, product_id, quantity, line_total)
VALUES
(1, 1, 1, 24.99), (1, 3, 1, 9.99),
(2, 2, 1, 79.99),
(3, 1, 1, 24.99),
(4, 4, 1, 129.99),
(5, 5, 1, 14.99), (5, 10, 1, 12.99), (5, 11, 1, 5.99), (5, 3, 1, 9.99),
(6, 7, 1, 89.99),
(7, 4, 1, 129.99), (7, 3, 1, 9.99), (7, 1, 1, 24.99),
(8, 3, 2, 19.98),
(9, 4, 1, 129.99),
(10, 8, 1, 49.99), (10, 5, 1, 14.99),
(11, 2, 1, 79.99),
(12, 8, 1, 49.99),
(13, 7, 1, 89.99), (13, 3, 1, 9.99),
(14, 5, 1, 14.99),
(15, 7, 1, 89.99), (15, 4, 1, 129.99),
(16, 12, 1, 39.99),
(17, 1, 1, 24.99),
(18, 7, 1, 89.99),
(19, 6, 1, 29.99),
(20, 8, 1, 49.99),
(21, 4, 1, 129.99),
(22, 3, 2, 19.98),
(23, 8, 1, 49.99), (23, 3, 1, 9.99),
(24, 12, 1, 39.99),
(25, 7, 1, 89.99);

SELECT COUNT(*) FROM practice.customers;
SELECT COUNT(*) FROM practice.products;
SELECT COUNT(*) FROM practice.orders;
SELECT COUNT(*) FROM practice.order_items;