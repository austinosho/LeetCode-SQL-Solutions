SELECT s.student_id, 
s.student_name,
b.subject_name,
COUNT(e.subject_name) AS attended_exams
FROM Students AS s
CROSS JOIN Subjects AS b 
LEFT JOIN Examinations AS e 
ON s.student_id = e.student_id
AND b.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, b.subject_name
ORDER BY s.student_id, b.subject_name;
