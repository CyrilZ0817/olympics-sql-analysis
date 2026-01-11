-- Q8.sql
-- Find athletes who won at least 3 medals in Swimming.
-- Important: team medals count for every member of the team.
-- Approach:
--   1) Count individual Swimming medals (winner_code = athlete code)
--   2) Expand team Swimming medals into individual athletes via teams.athletes_code
--   3) Union all medals and count per athlete

WITH individual_medals AS (
    SELECT
        a.code AS athlete_code,
        a.name,
        a.country_code
    FROM medals AS m
    JOIN athletes AS a
      ON a.code = m.winner_code
    WHERE m.discipline = 'Swimming'
),
team_medals_expanded AS (
    SELECT
        a.code AS athlete_code,
        a.name,
        a.country_code
    FROM medals AS m
    JOIN teams AS t
      ON t.code = m.winner_code
    CROSS JOIN LATERAL unnest(string_to_array(t.athletes_code, ',')) AS parts(raw_code)
    JOIN athletes AS a
      ON a.code = trim(parts.raw_code)
    WHERE m.discipline = 'Swimming'
),
all_swimming_medals AS (
    SELECT * FROM individual_medals
    UNION ALL
    SELECT * FROM team_medals_expanded
)
SELECT
    name,
    country_code,
    COUNT(*) AS medal_count
FROM all_swimming_medals
GROUP BY athlete_code, name, country_code
HAVING COUNT(*) >= 3
ORDER BY
    medal_count DESC,
    name ASC;
