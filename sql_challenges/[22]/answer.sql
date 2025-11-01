-- Answer to Exercise 22

SELECT
    DISTINCT v.viewer_id AS id
FROM Views AS v
WHERE v.viewer_id = v.author_id
GROUP BY id
ORDER BY id ASC
LIMIT 2;