-- SELECT students.name as student_name, students.start_date as student_start_date, cohorts.name as cohort_name, cohorts.start_date as cohort_start_date
-- FROM students 
-- JOIN cohorts ON cohorts.id = cohort_id
-- WHERE NOT students.start_date = cohorts.start_date
-- ORDER BY cohorts.start_date;

-- alt phrasing from sample answer:
SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;