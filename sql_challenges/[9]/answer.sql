-- Answer to Exercise 9

SELECT
    name
FROM Customer
WHERE referee_id !=2 OR referee_id IS NULL;