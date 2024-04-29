# Write your MySQL query statement below
SELECT id, num
FROM (
    SELECT id, COUNT(*) AS num
    FROM (
        SELECT requester_id AS id FROM RequestAccepted
        UNION ALL
        SELECT accepter_id FROM RequestAccepted
    ) AS combined_ids
    GROUP BY id
) AS friend_counts
ORDER BY num DESC
LIMIT 1;
