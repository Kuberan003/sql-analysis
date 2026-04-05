 1. Total trips
SELECT COUNT(*) AS total_trips FROM uber;

2. Total miles traveled
SELECT SUM(CAST(MILES AS REAL)) AS total_miles FROM uber;

3. Average miles per trip
SELECT AVG(CAST(MILES AS REAL)) AS avg_miles FROM uber;

4. Maximum trip distance
SELECT MAX(CAST(MILES AS REAL)) AS max_miles FROM uber;

5. Minimum trip distance
SELECT MIN(CAST(MILES AS REAL)) AS min_miles FROM uber;

6. Trips by category
SELECT CATEGORY, COUNT(*) AS trip_count
FROM uber
GROUP BY CATEGORY
ORDER BY trip_count DESC;

7. Average miles by category
SELECT CATEGORY, AVG(CAST(MILES AS REAL)) AS avg_miles
FROM uber
GROUP BY CATEGORY;

8. Top 5 longest trips
SELECT START_DATE, MILES, CATEGORY
FROM uber
ORDER BY CAST(MILES AS REAL) DESC
LIMIT 5;

9. Bottom 5 shortest trips
SELECT START_DATE, MILES, CATEGORY
FROM uber
ORDER BY CAST(MILES AS REAL) ASC
LIMIT 5;

10. Trips per day
SELECT START_DATE, COUNT(*) AS trips_per_day
FROM uber
GROUP BY START_DATE
ORDER BY START_DATE;

11. Total trips per driver
SELECT DRIVER, COUNT(*) AS trips_count
FROM uber
GROUP BY DRIVER
ORDER BY trips_count DESC;

 12. Total miles per driver
SELECT DRIVER, SUM(CAST(MILES AS REAL)) AS total_miles
FROM uber
GROUP BY DRIVER
ORDER BY total_miles DESC;

 13. Average miles per driver
SELECT DRIVER, AVG(CAST(MILES AS REAL)) AS avg_miles
FROM uber
GROUP BY DRIVER
ORDER BY avg_miles DESC;

 14. Trips above 20 miles
SELECT *
FROM uber
WHERE CAST(MILES AS REAL) > 20
ORDER BY CAST(MILES AS REAL) DESC;

15. Trips below 5 miles
SELECT *
FROM uber
WHERE CAST(MILES AS REAL) < 5
ORDER BY CAST(MILES AS REAL) ASC;

16. Trips count by start location
SELECT START_LOCATION, COUNT(*) AS trips_count
FROM uber
GROUP BY START_LOCATION
ORDER BY trips_count DESC;

17. Trips count by end location
SELECT END_LOCATION, COUNT(*) AS trips_count
FROM uber
GROUP BY END_LOCATION
ORDER BY trips_count DESC;

18. Trips for a specific category (e.g., 'UberX')
SELECT *
FROM uber
WHERE CATEGORY = 'UberX';

19. Total miles for a specific driver (e.g., 'John Doe')
SELECT DRIVER, SUM(CAST(MILES AS REAL)) AS total_miles
FROM uber
WHERE DRIVER = 'John Doe'
GROUP BY DRIVER;

20. Count of trips per category per day
SELECT START_DATE, CATEGORY, COUNT(*) AS trips_count
FROM uber
GROUP BY START_DATE, CATEGORY
ORDER BY START_DATE, CATEGORY;