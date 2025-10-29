-- Answer to Exercise 1

SELECT
    p.firstName,
    p.lastName,
    CASE WHEN a.city IS NULL THEN NULL ELSE city END AS city,
    CASE WHEN a.state IS NULL THEN NULL ELSE state END AS state
FROM Person AS p
LEFT JOIN Address AS a
    ON p.personId = a.personId