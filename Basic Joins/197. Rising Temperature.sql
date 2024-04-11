# Write your MySQL query statement below
select a.id
from weather as a
join weather as b
on a.recordDate = DATE_ADD(b.recordDate, interval 1 day)
where a.temperature > b.temperature;
