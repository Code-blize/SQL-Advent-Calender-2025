-- Difficulty: Medium

/*
At the winter market, Cindy Lou is browsing the clothing inventory and wants to find all items with "sweater" in their name. 
But the challenge is the color and item columns have inconsistent capitalization.
Can you write a query to return only the sweater names and their cleaned-up colors.
*/

select item_name, upper(substr(color, 1, 1)) || lower(substr(color, 2)) as cleaned_color
from winter_clothing
where lower(item_name) like '%sweater%';
