# 1789. Primary Department for Each Employee

# Write your MySQL query statement below
SELECT 
    e1.employee_id, 
    MAX(e1.department_id) AS department_id
FROM employee e1
WHERE e1.primary_flag = 'Y'
GROUP BY e1.employee_id

UNION

SELECT 
    e2.employee_id, 
    MAX(e2.department_id) AS department_id
FROM employee e2
GROUP BY e2.employee_id
HAVING COUNT(e2.employee_id) = 1;
