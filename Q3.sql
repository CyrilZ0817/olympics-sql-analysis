-- Q3.sql
-- Find countries with more gold medals than silver medals in Tokyo 2020
-- Demonstrates conditional filtering and multi-level sorting

SELECT
    tm.country_code,
    tm.gold_medal,
    tm.silver_medal
FROM tokyo_medals AS tm
WHERE tm.gold_medal > tm.silver_medal
ORDER BY
    tm.gold_medal DESC,
    tm.silver_medal DESC,
    tm.country_code ASC;
