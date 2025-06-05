USE northwind; 

SELECT * FROM products;

-- 01
INSERT INTO suppliers (SupplierID, CompanyName)
values (50, "Some Company Name");

-- 02
INSERT INTO products (ProductID, ProductName, SupplierID, UnitPrice)
values (2, "Some Product Name" , 50, 45.4);

-- 03 
SELECT productName, companyName FROM products
JOIN suppliers ON suppliers.companyName = companyName;

-- 04 
UPDATE Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductName = 'Some Product Name';

-- 05
SELECT ProductName, UnitPrice
from products
where SupplierID = 50;

-- 06 
DELETE FROM products
WHERE ProductID = 2;

-- 07
DELETE FROM suppliers
WHERE SupplierID = 50;

-- 08
SELECT * FROM products; 

-- 09
SELECT * FROM suppliers;
