-- Q9.sql
-- Percentage of athletes participating in multiple individual Shooting events
-- Notes:
--   - discipline_name must be exactly 'Shooting'
--   - participant_type must be exactly 'Person'
--   - results may contain multiple rounds per event, so we count DISTINCT events per athlete

WITH shooting_participation AS (
    SELECT
        r.participant_code,
        COUNT(DISTINCT r.event_name) AS event_count
    FROM results AS r
    WHERE r.discipline_name = 'Shooting'
      AND r.participant_type = 'Person'
    GROUP BY r.participant_code
),
counts AS (
    SELECT
        COUNT(*) AS total_athletes,
        COUNT(*) FILTER (WHERE event_count > 1) AS multi_event_athletes
    FROM shooting_participation
)
SELECT
    ROUND((multi_event_athletes::numeric / total_athletes) * 100, 2) AS percentage
FROM counts;
