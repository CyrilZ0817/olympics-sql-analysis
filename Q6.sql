-- Q6.sql
-- Count USA gold/silver/bronze medals in individual events (Paris 2024)
-- Individual event is ensured by joining medals.winner_code to athletes.code

SELECT
    a.country_code,
    SUM(CASE WHEN mi.name = 'Gold Medal'   THEN 1 ELSE 0 END) AS gold_medals,
    SUM(CASE WHEN mi.name = 'Silver Medal' THEN 1 ELSE 0 END) AS silver_medals,
    SUM(CASE WHEN mi.name = 'Bronze Medal' THEN 1 ELSE 0 END) AS bronze_medals
FROM medals AS m
JOIN medal_info AS mi
  ON mi.code = m.medal_code
JOIN athletes AS a
  ON a.code = m.winner_code
WHERE a.country_code = 'USA'
  AND m.medal_date >= DATE '2024-01-01'
  AND m.medal_date <  DATE '2025-01-01'
GROUP BY a.country_code;
