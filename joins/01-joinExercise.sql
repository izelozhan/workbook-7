USE northwind;

-- 01 
SELECT productID, productName, unitPrice, categoryName FROM products
JOIN categories ON categories.CategoryName = categoryName
ORDER BY categoryName, productName;

-- 02
SELECT productID, productName, unitPrice, companyName FROM products
JOIN suppliers ON suppliers.CompanyName = companyName
WHERE unitPrice > 75
ORDER BY productName;

-- 03
SELECT productID, productName, unitPrice, categoryName, companyName FROM products
JOIN categories ON categories.CategoryName = categoryName
JOIN suppliers ON suppliers.CompanyName = companyName
ORDER BY productName;

-- 04
SELECT productName, categoryName, unitPrice FROM products
JOIN categories ON categories.categoryName = categoryName
WHERE unitPrice = (SELECT MAX(UnitPrice) FROM products);

-- 05
SELECT orderID, shipName, shipAddress, companyName FROM orders
JOIN shippers ON shippers.companyName = companyName
WHERE shipCountry = "Germany";

-- 06
SELECT orderID, orderDate, ShipName, ShipAddress FROM orders
JOIN 
    `Order Details` ON Orders.OrderID = `Order Details`.OrderID
WHERE 
    `Order Details`.ProductID = (
        SELECT ProductID 
        FROM Products 
        WHERE ProductName = 'Sasquatch Ale'
    );


