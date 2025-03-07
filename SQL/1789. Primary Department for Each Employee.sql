# Write your MySQL query statement below
select employee_id, department_id
from Employee
where primary_flag = 'Y'
UNION
SELECT 
    employee_id, 
    department_id
FROM Employee
where employee_id not in (select employee_id from Employee where primary_flag = 'Y')
order by employee_id;
