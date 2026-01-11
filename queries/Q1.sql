-- Q1.sql
-- Find all athletes from China who participate in Table Tennis
-- Demonstrates filtering, string matching, and sorting

SELECT
    a.code,
    a.name,
    a.country_code,
    a.birth_date
FROM athletes AS a
WHERE a.country_code = 'CHN'
  AND a.disciplines LIKE '%Table Tennis%'
ORDER BY a.name ASC;
