-- Q4.sql
-- Find USA athletes who won gold medals in individual events (Paris 2024)
-- Individual event is ensured by joining medals.winner_code to athletes.code

SELECT
    a.name,
    a.country_code,
    m.medal_code,
    m.event
FROM medals AS m
JOIN medal_info AS mi
  ON mi.code = m.medal_code
JOIN athletes AS a
  ON a.code = m.winner_code
WHERE a.country_code = 'USA'
  AND mi.name = 'Gold Medal'
  AND m.medal_date >= DATE '2024-01-01'
  AND m.medal_date <  DATE '2025-01-01'
ORDER BY a.name ASC;
