# 1204. Last Person to Fit in the Bus

# Write your MySQL query statement below
SELECT 
    q1.person_name
FROM queue q1
INNER JOIN queue q2 
    ON q1.turn >= q2.turn
GROUP BY 
    q1.turn, 
    q1.person_name
HAVING 
    SUM(q2.weight) <= 1000
ORDER BY 
    q1.turn DESC
LIMIT 1;
