# Write your MySQL query statement below
with ranked_salary as 
(select departmentId, name ,salary,
dense_rank() over (partition by departmentId order by salary desc) as ranking
from Employee)

select d.name as Department, 
r.name as Employee, 
r.salary as Salary
from ranked_salary r
inner join department d
on r.departmentId = d.id
where ranking <= 3
order by d.name asc, r.salary desc, d.name asc
;
