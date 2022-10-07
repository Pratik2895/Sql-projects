
SELECT 
    c.customerNumber, c.customerName, orderNumber, status
FROM
    customers c
        LEFT JOIN
    orders o ON c.customerNumber = o.customerNumber 
UNION SELECT 
    c.customerNumber, c.customerName, orderNumber, status
FROM
    customers c
        RIGHT JOIN
    orders o ON c.customerNumber = o.customerNumber;
