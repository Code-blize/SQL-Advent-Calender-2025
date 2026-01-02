-- Difficulty: Medium


/*
  Some elves took time off after the holiday rush, but not everyone has returned to work. 
List all elves by name, showing their return date. 
If they have not returned from vacation, list their return date as "Still resting".
*/

-- Here's my SQL query for question:
SELECT 
    e.elf_name,
    COALESCE(v.return_date, 'Still resting') AS return_status
FROM elves e
LEFT JOIN vacations v
    ON e.elf_id = v.elf_id;
