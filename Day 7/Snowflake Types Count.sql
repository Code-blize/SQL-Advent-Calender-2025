-- Difficulty: Easy

/*
Frosty wants to know how many unique snowflake types were recorded on the December 24th, 2025 storm. 
Can you help him?
*/

-- Here's my SQL query for question:
select count(distinct flake_type) as unique_flake_type
from snowfall_log
where date(fall_time) = '2025-12-24';
