-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) < 100;

-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- GROUP BY students.name;

SELECT day, count(assignments.*) as total_assignments
FROM assignments
GROUP BY day
ORDER BY day;

-- Sample solution from Compass
SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;