-- Answer to Exercise 25

SELECT
    p.product_id AS product_id,
    COALESCE(
        CAST(ROUND(SUM(p.price * s.units) * 1.0 / NULLIF(SUM(s.units), 0), 2) AS DECIMAL(10, 2)),
        0
    ) AS average_price
FROM Prices AS p
LEFT JOIN UnitsSold AS s
    ON s.product_id = p.product_id
    AND s.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;