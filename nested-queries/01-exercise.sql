USE northwind;

-- 01 
SELECT productName, unitPrice FROM products 
WHERE unitPrice = (SELECT MAX(UnitPrice) FROM products);
-- 02
SELECT orderID, shipName, shipAddress FROM orders
WHERE shipVia = (SELECT shipperID FROM shippers WHERE companyName = "Federal Shipping");
-- 03
SELECT orderID FROM `order details` 
WHERE productID = (SELECT productID FROM products WHERE productName = "Sasquatch Ale");
-- 04 
SELECT firstName, lastName FROM employees
WHERE employeeID = (SELECT employeeID FROM orders WHERE orderID = 10266);
-- 05
SELECT contactName FROM customers
WHERE customerID = (SELECT customerID FROM orders WHERE orderID = 10266);