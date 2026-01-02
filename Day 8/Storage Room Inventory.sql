-- Difficulty: Medium

/*
Mrs. Claus is organizing the holiday storage room and wants a single list of all decorations — both Christmas trees and light sets. 
Write a query that combines both tables and includes each item's name and category.
*/

-- Here's my SQL query for question 
select item_name, category
from storage_trees

union all 

select item_name, category
from storage_lights;
