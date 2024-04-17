# Write your MySQL query statement below
select e.employee_id, e.name, COUNT(*) AS reports_count, ROUND(AVG(e1.age)) AS average_age
from Employees e, Employees e1
where e.employee_id = e1.reports_to
group by e.employee_id 
order by e.employee_id;
