# Write your MySQL query statement below
select x,y,z,
case when x + y <= z then 'No'
when y + z <= x then 'No'
when x + z <= y then 'No'
Else 'Yes'
End as triangle
from Triangle;
