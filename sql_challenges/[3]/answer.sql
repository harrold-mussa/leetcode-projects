-- Answer to Exercise 3

ELECT
    email AS Email
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;