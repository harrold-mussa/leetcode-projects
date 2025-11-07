-- Answer to Exercise 24 

SELECT
    query_name,
    ROUND(AVG(rating / position), 2) AS quality,
    ROUND((rating / position * 100), 2) AS poor_query_percentage
FROM Queries
HAVING COUNT(rating) < 3
ORDER BY query_name, poor_query_percentage;

-- WRONG