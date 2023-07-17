-- In the orders.sql file, write out the code for the following problems:


-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

  CREATE TABLE orders (
order_id SERIAL PRIMARY KEY
,person_id   INTEGER 
,product_name VARCAHR(100)
,product_price DECIMAL(10,2) 
,quantity INTEGER
)


....-- FOREIGN KEY REFERENCES(person)

-- Add 5 orders to the orders table. -- Make orders for at least two different people. -- person_id should be different for different people.


-- first order 
INSERT INTO orders
(person_1d, product_name, product_price, quantity)
VALUES (
    1,lightsaber,2000.50,1
)
-- 4 more
INSERT INTO orders
(person_1d, product_name, product_price, quantity)
VALUES (5,'millenium falcon',900000,1)
,(1,'lightsaber',2000.60,1)
,(4,'bowcaster bolts',50.45,50)
,(5,'blaster packs',23.65,5)

-- Select all the records from the orders table.
SELECT * FROM orders

-- Calculate the total number of products ordered.
SELECT SUM (quantity) FROM orders

-- Calculate the total order price.
SELECT SUM (product_price) FROM orders

-- by a product for funsies
SELECT SUM (quantity * product_price) FROM orders WHERE product_name like 'bowcaster %'
-- RESULT: 2522.50   EXPECTED 

-- Calculate the total order price by a single person_id.
SELECT SUM (quantity * product_price) FROM orders WHERE person_id = 1
-- RESULT: 4001.10   EXPECTED 