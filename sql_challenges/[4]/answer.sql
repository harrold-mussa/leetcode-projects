-- Answer to Exericse 4

SELECT 
    c.name AS Customers
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.id = o.customerId
WHERE o.id IS NULL