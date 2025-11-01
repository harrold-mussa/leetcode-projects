-- Answer to Exercise 21

SELECT
    p.product_id AS product_id,
    p.product_name AS product_name
FROM Product AS p
LEFT JOIN Sales AS s
    ON p.product_id = s.product_id
WHERE s.sale_date BETWEEN '2019-01-01' AND '2019-03-31'
LIMIT 1;
