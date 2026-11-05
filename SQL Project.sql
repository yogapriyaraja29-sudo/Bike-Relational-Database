Create database Bike_project;
Use Bike_project;
show tables;
select*from products  ;
describe products;
show create table customers;
select*from customers  ;
select*from brands  ;
SELECT * FROM `orders (1)` LIMIT 10;
RENAME TABLE `orders (1)` TO orders;
select*from orders limit 10  ;
select*from orders;
SELECT COUNT(*) FROM brands;
SELECT COUNT(*) FROM categories;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM order_items;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM staffs;
SELECT COUNT(*) FROM stocks;
SELECT COUNT(*) FROM stores;
SELECT COUNT(*) AS total_products FROM products;
SELECT * FROM products WHERE brand_id = 1;
SELECT *FROM products ORDER BY list_price DESC;
SELECT brand_id, COUNT(*) AS total_products FROM products GROUP BY brand_id;
SELECT
    p.product_id,
    p.product_name,
    b.brand_name,
    p.list_price
FROM products AS p INNER JOIN brands AS b ON p.brand_id = b.brand_id;
SELECT AVG(list_price) AS average_price FROM products;
SELECT min(list_price)  FROM products;
SELECT max(list_price)  FROM products;
SELECT order_status, COUNT(*) AS total_orders FROM orders GROUP BY order_status;
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM customers AS c INNER JOIN orders AS o ON c.customer_id = o.customer_id;
SELECT LEFT('BICYCLE', 3) AS result;
SELECT  RIGHT('BICYCLE', 3) AS result;
SELECT b.brand_name, p.product_name
FROM brands AS b LEFT JOIN products AS p ON b.brand_id = p.brand_id;
SELECT b.brand_name, p.product_name FROM products AS p
RIGHT JOIN brands AS b ON p.brand_id = b.brand_id;
SELECT product_name, list_price FROM products
WHERE list_price < (SELECT AVG(list_price) FROM products);
DELETE FROM products WHERE  product_id = 9999;
ALTER TABLE products ADD COLUMN remarks VARCHAR(10); 