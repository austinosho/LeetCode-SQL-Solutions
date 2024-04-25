# Write your MySQL query statement below
select distinct(a.num) as ConsecutiveNums
from Logs as a
join logs as b on a.id = b.id - 1
join logs as c on a.id = c.id - 2
where a.num = b.num and a.num = c.num;
