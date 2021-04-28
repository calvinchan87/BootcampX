SELECT count(assistance_requests.*) as total_assistances, students.name
FROM students
JOIN assistance_requests
ON assistance_requests.student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;