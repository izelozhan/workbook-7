USE northwind;

-- 01
SELECT COUNT(*) FROM suppliers;
-- 02
SELECT SUM(salary) FROM employees;
-- 03
SELECT MIN(unitPrice) FROM products;
-- 04
SELECT AVG(unitPrice) FROM products;
-- 05 
SELECT MAX(unitPrice) FROM products;
-- 06
SELECT supplierID, COUNT(*) AS numberOfItems FROM products GROUP BY supplierID;
-- 07 
SELECT categoryID, AVG(unitPrice) AS averagePrice FROM products GROUP BY categoryID;
-- 08 
SELECT supplierID, COUNT(*) AS numberOfItems FROM products GROUP BY supplierID HAVING COUNT(*) >= 5;
-- 09 
SELECT productID, productName, unitPrice * unitsInStock AS inventoryValue FROM products
ORDER BY inventoryValue;