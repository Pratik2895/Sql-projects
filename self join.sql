select * from employees;
SELECT 
    CONCAT(m.lastName, '-', m.firstName) AS Manager,
    CONCAT(e.lastName, '-', e.firstName) AS employee
FROM
    employees e
        INNER JOIN
    employees m ON e.reportsTo= m.employeeNumber 
ORDER BY Manager;