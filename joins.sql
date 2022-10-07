SELECT 
    o.orderNumber,
    o.status,
    p.productName,
    SUM(quantityordered * priceEach) AS Revenue
FROM
    orders o
        INNER JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
        INNER JOIN
    products p ON p.productCode = od.productCode
GROUP BY orderNumber; 



SELECT 
    c.customerNumber, c.customerName, orderNumber, status
FROM
    customers c
        LEFT JOIN
    orders o ON c.customerNumber = o.customerNumber
WHERE
    status IS NULL;