# Write your MySQL query statement below
SELECT user_name AS results
FROM (
    SELECT name AS user_name,
    COUNT(movie_id) AS rating_count
    FROM Users
    JOIN MovieRating ON Users.user_id = MovieRating.user_id
    GROUP BY name
    ORDER BY rating_count DESC, name ASC
    LIMIT 1
) AS user_max_rating
UNION ALL
SELECT movie_title AS results
FROM (
    SELECT title AS movie_title,
    AVG(rating) AS avg_rating
    FROM Movies
    JOIN MovieRating ON Movies.movie_id = MovieRating.movie_id
    WHERE YEAR(created_at) = 2020 AND MONTH(created_at) = 2
    GROUP BY title
    ORDER BY avg_rating DESC, title ASC
    LIMIT 1
) AS movie_max_avg_rating;
