SELECT AVG(total_duration) as average_total_duration
FROM (
SELECT cohorts.name as cohort, SUM(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
FROM students
JOIN cohorts
ON cohorts.id = cohort_id
JOIN assistance_requests
ON assistance_requests.student_id = students.id
GROUP BY cohort
ORDER BY total_duration
) as total_durations;