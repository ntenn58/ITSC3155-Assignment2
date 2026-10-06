-- Select database
CREATE DATABASE IF NOT EXISTS sandwich_maker;
USE sandwich_maker;

-- Clean up existing tables to prevent "already exists" errors
DROP TABLE IF EXISTS recipes;
DROP TABLE IF EXISTS sandwiches;
DROP TABLE IF EXISTS resources;

-- Create tables
CREATE TABLE resources (
    item VARCHAR(50),
    amount INT
);

CREATE TABLE sandwiches (
    sandwich_size VARCHAR(50),
    price DECIMAL(5,2)
);

CREATE TABLE recipes (
    sandwich_size VARCHAR(50),
    item VARCHAR(50),
    amount INT
);

-- Insert initial data
INSERT INTO resources (item, amount) VALUES
('bread', 12),
('ham', 18),
('cheese', 24);

INSERT INTO sandwiches (sandwich_size, price) VALUES
('small', 1.75),
('medium', 3.25),
('large', 5.50);

INSERT INTO recipes (sandwich_size, item, amount) VALUES
('small', 'bread', 2),
('small', 'ham', 4),
('small', 'cheese', 4),
('medium', 'bread', 4),
('medium', 'ham', 6),
('medium', 'cheese', 8),
('large', 'bread', 6),
('large', 'ham', 8),
('large', 'cheese', 12);

-- Verification queries
SELECT * FROM resources;
SELECT * FROM sandwiches;
SELECT * FROM recipes;