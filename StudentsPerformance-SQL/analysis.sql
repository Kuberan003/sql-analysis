1. Total students who completed test prep
SELECT COUNT(*) AS students_completed_prep
FROM StudentsPerformance
WHERE "test preparation course" = 'completed';

2. Total students who did not complete test prep
SELECT COUNT(*) AS students_not_completed_prep
FROM StudentsPerformance
WHERE "test preparation course" = 'none';

 3. Average math score
SELECT AVG(CAST("math score" AS REAL)) AS avg_math
FROM StudentsPerformance;

 4. Average reading score
SELECT AVG(CAST("reading score" AS REAL)) AS avg_reading
FROM StudentsPerformance;

 5. Average writing score
SELECT AVG(CAST("writing score" AS REAL)) AS avg_writing
FROM StudentsPerformance;

 6. Students with all scores > 90
SELECT *
FROM StudentsPerformance
WHERE CAST("math score" AS REAL) > 90
  AND CAST("reading score" AS REAL) > 90
  AND CAST("writing score" AS REAL) > 90;

 7. Students with any score < 50
SELECT *
FROM StudentsPerformance
WHERE CAST("math score" AS REAL) < 50
   OR CAST("reading score" AS REAL) < 50
   OR CAST("writing score" AS REAL) < 50;

 8. Count of students by lunch type
SELECT lunch, COUNT(*) AS total_students
FROM StudentsPerformance
GROUP BY lunch;

 9. Average total score by gender
SELECT gender,
       AVG(CAST("math score" AS REAL) + CAST("reading score" AS REAL) + CAST("writing score" AS REAL)) AS avg_total
FROM StudentsPerformance
GROUP BY gender;

 10. Highest total score
SELECT *,
       (CAST("math score" AS REAL) + CAST("reading score" AS REAL) + CAST("writing score" AS REAL)) AS total_score
FROM StudentsPerformance
ORDER BY total_score DESC
LIMIT 1;

 11. Lowest total score
SELECT *,
       (CAST("math score" AS REAL) + CAST("reading score" AS REAL) + CAST("writing score" AS REAL)) AS total_score
FROM StudentsPerformance
ORDER BY total_score ASC
LIMIT 1;

 12. Count of students by parental education
SELECT "parental level of education", COUNT(*) AS total_students
FROM StudentsPerformance
GROUP BY "parental level of education";

 13. Average math score by parental education
SELECT "parental level of education",
       AVG(CAST("math score" AS REAL)) AS avg_math
FROM StudentsPerformance
GROUP BY "parental level of education";

 14. Average reading score by parental education
SELECT "parental level of education",
       AVG(CAST("reading score" AS REAL)) AS avg_reading
FROM StudentsPerformance
GROUP BY "parental level of education";

 15. Average writing score by parental education
SELECT "parental level of education",
       AVG(CAST("writing score" AS REAL)) AS avg_writing
FROM StudentsPerformance
GROUP BY "parental level of education";

 16. Count of students by gender and lunch
SELECT gender, lunch, COUNT(*) AS total_students
FROM StudentsPerformance
GROUP BY gender, lunch;

 17. Top 5 students in math
SELECT *
FROM StudentsPerformance
ORDER BY CAST("math score" AS REAL) DESC
LIMIT 5;

 18. Bottom 5 students in writing
SELECT *
FROM StudentsPerformance
ORDER BY CAST("writing score" AS REAL) ASC
LIMIT 5;

 19. Students with average score > 85
SELECT *,
       ((CAST("math score" AS REAL) + CAST("reading score" AS REAL) + CAST("writing score" AS REAL))/3.0) AS avg_score
FROM StudentsPerformance
WHERE ((CAST("math score" AS REAL) + CAST("reading score" AS REAL) + CAST("writing score" AS REAL))/3.0) > 85;

 20. Students with math > 90 and reading > 90
SELECT *
FROM StudentsPerformance
WHERE CAST("math score" AS REAL) > 90
  AND CAST("reading score" AS REAL) > 90;

 21. Count of students with all scores > 80
SELECT COUNT(*) AS students_above_80
FROM StudentsPerformance
WHERE CAST("math score" AS REAL) > 80
  AND CAST("reading score" AS REAL) > 80
  AND CAST("writing score" AS REAL) > 80;

 22. Average scores by gender for completed prep course
SELECT gender,
       AVG(CAST("math score" AS REAL)) AS avg_math,
       AVG(CAST("reading score" AS REAL)) AS avg_reading,
       AVG(CAST("writing score" AS REAL)) AS avg_writing
FROM StudentsPerformance
WHERE "test preparation course" = 'completed'
GROUP BY gender;

 23. Count of students by test prep and lunch
SELECT "test preparation course", lunch, COUNT(*) AS total_students
FROM StudentsPerformance
GROUP BY "test preparation course", lunch;

 24. Students with math between 70 and 90
SELECT *
FROM StudentsPerformance
WHERE CAST("math score" AS REAL) BETWEEN 70 AND 90;

 25. Average scores for standard lunch
SELECT AVG(CAST("math score" AS REAL)) AS avg_math,
       AVG(CAST("reading score" AS REAL)) AS avg_reading,
       AVG(CAST("writing score" AS REAL)) AS avg_writing
FROM StudentsPerformance
WHERE lunch = 'standard';