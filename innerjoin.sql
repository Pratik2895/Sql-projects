use classicmodels;
show tables;
SELECT 
    *
FROM
    products AS p
        INNER JOIN
    productlines USING (productline);
    
SELECT 
    c.customerNumber, c.customerName, orderNumber, status
FROM
    orders o
        RIGHT JOIN
    customers c ON c.customerNumber = o.customerNumber
WHERE
    status IS NULL;