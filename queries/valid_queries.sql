-- Insert valid users
INSERT INTO users (id, name, email, age, country)
VALUES 
(1, 'Ali', 'ali@example.com', 25, 'Pakistan'),
(2, 'Ahmed', 'ahmed@example.com', 30, 'UAE');

-- Insert valid order
INSERT INTO orders (id, user_id, product_name, amount)
VALUES (1, 1, 'Laptop', 1200.00);