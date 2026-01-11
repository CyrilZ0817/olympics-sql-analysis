-- Q5.sql
-- Find USA teams who won gold medals in team events (Paris 2024)
-- Team event is ensured by joining medals.winner_code to teams.code

SELECT
    t.code AS team_code,
    t.country_code,
    m.medal_code,
    m.event
FROM medals AS m
JOIN medal_info AS mi
  ON mi.code = m.medal_code
JOIN teams AS t
  ON t.code = m.winner_code
WHERE t.country_code = 'USA'
  AND mi.name = 'Gold Medal'
  AND m.medal_date >= DATE '2024-01-01'
  AND m.medal_date <  DATE '2025-01-01'
ORDER BY t.code ASC;
