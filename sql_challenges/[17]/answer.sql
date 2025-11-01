-- Answer to Exercise 17

UPDATE Salary
SET
    sex = CASE sex
                WHEN 'm' THEN 'f'
                ELSE 'm'
            END;