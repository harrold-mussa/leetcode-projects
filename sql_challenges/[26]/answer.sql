-- Answer to Exercise 26

SELECT
    std.student_id AS student_id,
    std.student_name AS student_name, 
    sub.subject_name AS subject_name,
    COUNT(exa.student_id) AS attended_exams
FROM Students AS std
INNER JOIN Examinations AS exa
    ON std.student_id = exa.student_id
INNER JOIN Subjects AS sub
    ON exa.subject_name = sub.subject_name
GROUP BY std.student_id, std.student_name, sub.subject_name
ORDER BY std.student_id, sub.subject_name;