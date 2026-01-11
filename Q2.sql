-- Q2.sql
-- Find the 20 youngest athletes
-- Demonstrates sorting with multiple ordering conditions

SELECT
    a.code AS athlete_id,
    a.name,
    a.country_code,
    a.birth_date
FROM athletes AS a
ORDER BY
    a.birth_date DESC,
    a.code ASC
LIMIT 20;
