-- ❌ Order without valid user (should fail)
INSERT INTO orders (id, user_id, product_name, amount)
VALUES (2, 999, 'Phone', 500);

-- ❌ Duplicate email (should fail)
INSERT INTO users (id, name, email, age, country)
VALUES (3, 'Test', 'ali@example.com', 22, 'Pakistan');

-- ❌ Negative amount (BUG)
INSERT INTO orders (id, user_id, product_name, amount)
VALUES (3, 1, 'Tablet', -100);