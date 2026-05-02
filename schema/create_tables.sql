-- Create Users Table
CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(100) UNIQUE,
  age INT,
  country VARCHAR(50)
);

-- Create Orders Table
CREATE TABLE orders (
  id INT PRIMARY KEY,
  user_id INT,
  product_name VARCHAR(100),
  amount DECIMAL(10,2),
  FOREIGN KEY (user_id) REFERENCES users(id)
);