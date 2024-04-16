# Write your MySQL query statement below
select activity_date AS day, COUNT(DISTINCT user_id) AS active_users
from Activity 
where DATEDIFF('2019-07-27', activity_date) < 30 AND DATEDIFF('2019-07-27', activity_date) >= 0
group by day;
