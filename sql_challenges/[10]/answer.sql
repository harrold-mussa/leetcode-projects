-- Answer to Exercise 10

SELECT
    MAX(customer_number) AS customer_number
FROM Orders
LIMIT 1;

-- Leetcode's correct answer despite errors (logged an issue on LeetCode GitHub)
SELECT
    customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(customer_number) DESC
LIMIT 1;