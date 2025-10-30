-- Answer to Exercise 6

Select id
FROM Weather AS w
WHERE temperature > (
    SELECT temperature
    FROM weather AS x
    WHERE x.id + 1 = w.id
    LIMIT 1
);