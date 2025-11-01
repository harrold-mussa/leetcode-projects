-- Answer to Exercise 16

SELECT
    id,
    movie,
    description,
    rating
FROM Cinema
WHERE (id % 2 = 1 OR id % 2 = 5) AND description != 'boring'
ORDER BY rating DESC;
