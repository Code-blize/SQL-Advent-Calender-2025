-- Difficulty: Easy

/*
Santa's audit team is reviewing this year's behavior scores to find the extremes — 
write a query to return the lowest and highest scores recorded on the Naughty or Nice list.
*/

select min(behavior_score) as lowest_score, max(behavior_score) as highest_score
from behavior_scores
