-- Q7.sql
-- Top 10 countries by gold, silver, then bronze medals (Paris 2024)
-- Handles winner_code being either an athlete code or a team code

WITH winner_country AS (
    -- Map athlete winners to country
    SELECT
        a.code AS winner_code,
        a.country_code
    FROM athletes AS a

    UNION ALL

    -- Map team winners to country
    SELECT
        t.code AS winner_code,
        t.country_code
    FROM teams AS t
)
SELECT
    wc.country_code,
    SUM(CASE WHEN mi.name = 'Gold Medal'   THEN 1 ELSE 0 END) AS gold_medals,
    SUM(CASE WHEN mi.name = 'Silver Medal' THEN 1 ELSE 0 END) AS silver_medals,
    SUM(CASE WHEN mi.name = 'Bronze Medal' THEN 1 ELSE 0 END) AS bronze_medals
FROM medals AS m
JOIN medal_info AS mi
  ON mi.code = m.medal_code
JOIN winner_country AS wc
  ON wc.winner_code = m.winner_code
WHERE m.medal_date >= DATE '2024-01-01'
  AND m.medal_date <  DATE '2025-01-01'
GROUP BY wc.country_code
ORDER BY
    gold_medals DESC,
    silver_medals DESC,
    bronze_medals DESC
LIMIT 10;
