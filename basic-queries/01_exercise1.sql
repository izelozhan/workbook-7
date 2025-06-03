use northwind;

-- 01
SELECT productname FROM products; 
-- 02 
SELECT productID, productName, unitPrice FROM products;
-- 03
SELECT productID, productName, unitPrice FROM products ORDER BY unitPrice;
-- 04 
SELECT productName, unitPrice FROM products WHERE unitPrice <= 7.50 ORDER BY unitPrice desc;
-- 05
SELECT productName, unitPrice, UnitsInStock FROM products WHERE UnitsInStock >= 100 ORDER BY unitPrice desc;
-- 06
SELECT DISTINCT(UnitPrice) FROM products WHERE UnitsInStock >= 100 ORDER BY unitPrice desc;
-- 07 
SELECT productName, UnitPrice, UnitsInStock, UnitsOnOrder FROM products WHERE UnitsInStock = 0 AND (UnitsOnOrder >= 1) ORDER BY ProductName;
-- 08 
SELECT categoryName, categoryID FROM categories;
-- 09/10
SELECT categoryID, productName FROM products WHERE categoryID = 8;
-- 11 
SELECT firstName, lastName FROM employees; 
-- 12
SELECT firstName, lastName, title FROM employees WHERE title LIKE '%manager%';
-- 13 
SELECT DISTINCT(title) FROM employees;
-- 14 
SELECT firstName, lastName, salary FROM employees WHERE salary BETWEEN 2000 AND 2500;
-- 15 
SELECT * FROM suppliers;
-- 16
SELECT * FROM products WHERE supplierID = 4
