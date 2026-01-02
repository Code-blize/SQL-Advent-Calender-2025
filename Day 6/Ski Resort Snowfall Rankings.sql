-- Difficulty: Hard

/*
Buddy is planning a winter getaway and wants to rank ski resorts by annual snowfall. 
Can you help him bucket these ski resorts into quartiles
*/

--Here's my SQL query for question:
WITH annual_snow AS (
    SELECT 
        resort_id,
        resort_name,
        SUM(snowfall_inches) AS total_annual_snowfall
    FROM resort_monthly_snowfall
    GROUP BY resort_id, resort_name
),
quartiled AS (
    SELECT
        resort_id,
        resort_name,
        total_annual_snowfall,
        NTILE(4) OVER (ORDER BY total_annual_snowfall ASC) AS snowfall_quartile
    FROM annual_snow
)
SELECT *
FROM quartiled
ORDER BY snowfall_quartile, total_annual_snowfall;
