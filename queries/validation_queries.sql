-- Validate inserted orders
SELECT * FROM orders;

-- Validate users
SELECT * FROM users;

-- JOIN validation (user + orders)
SELECT u.name, o.product_name, o.amount
FROM users u
INNER JOIN orders o ON u.id = o.user_id;

-- Check for negative values
SELECT * FROM orders WHERE amount < 0;