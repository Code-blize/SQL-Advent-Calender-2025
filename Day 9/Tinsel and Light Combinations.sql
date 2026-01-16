-- Difficulty: Hard

/*
The elves are testing new tinsel–light combinations to find the next big holiday trend.
Write a query to generate every possible pairing of tinsel colors and light colors, 
include in your output a column that combines the two values separated with a dash ("-").
*/

SELECT 
  t.color_name AS tinsel_color,
  l.color_name AS light_color,
  t.color_name || '-' || l.color_name AS combo_name
FROM tinsel_colors AS t, light_colors AS l;
