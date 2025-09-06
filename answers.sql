--question 1
SELECT 
    firstName,
    lastName,
    email,
    officeCode
FROM employees;
SELECT e.firstName, 
e.lastName,
 e.email, 
 e.officeCode
FROM employees e
INNER JOIN offices o 
ON e.officeCode = o.officeCode;

--question 2

SELECT 
    productName,
    productVendor,
    productLine
FROM products;
SELECT 
    p.productName,
    p.productVendor,
    p.productLine,
    pl.textDescription
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

--question 3

SELECT 
    orderDate,
    shippedDate,
    status,
    customerNumber
FROM orders
LIMIT 10;
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber,
    c.customerName,
    c.contactLastName,
    c.contactFirstName
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber;
