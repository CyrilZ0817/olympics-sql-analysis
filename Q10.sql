-- Q10.sql
-- Compute total GDP (GDP per capita * population), rank countries, and return top 10

SELECT
    c.code AS country_code,
    (COALESCE(c.population, 0) * COALESCE(c."GDP ($ per capita)", 0)) AS total_gdp,
    RANK() OVER (
        ORDER BY (COALESCE(c.population, 0) * COALESCE(c."GDP ($ per capita)", 0)) DESC
    ) AS gdp_rank
FROM countries AS c
ORDER BY total_gdp DESC
LIMIT 10;
