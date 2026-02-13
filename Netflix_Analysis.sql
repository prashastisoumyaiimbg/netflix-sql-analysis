

 select
 m.Name,
 m.Year,
 r.Rating
 from netflix_dataset_movie m
 join netflix_dataset_rating r
 on m.Movie_ID = r.Movie_ID;
-- TASK 1
 -- Calculate average rating and popularity
SELECT 
    m.Name, 
    AVG(r.Rating) AS avg_score, 
    COUNT(r.Rating) AS total_votes
FROM netflix_dataset_movie m
JOIN netflix_dataset_rating r 
    ON m.Movie_ID = r.Movie_ID
GROUP BY m.Name
ORDER BY avg_score DESC;
-- TASK 2 Find the top 5 most active reviewers
SELECT 
    User_ID, 
    COUNT(Rating) AS total_ratings_given
FROM netflix_dataset_rating
GROUP BY User_ID
ORDER BY total_ratings_given DESC
LIMIT 5;
-- TASK 3: Rank movies by rating within each year
SELECT 
    m.Name, 
    m.Year, 
    AVG(r.Rating) AS avg_rating,
    RANK() OVER(PARTITION BY m.Year ORDER BY AVG(r.Rating) DESC) as movie_rank
FROM netflix_dataset_movie m
JOIN netflix_dataset_rating r ON m.Movie_ID = r.Movie_ID
GROUP BY m.Movie_ID, m.Name, m.Year;
/* CONCLUSION: This project successfully analyzed Netflix user preferences and movie 
popularity by integrating movie metadata with over 100,000 ratings using Inner Joins. 
Through data aggregation, I identified that while 'Immortal Beloved' (1994) holds the 
highest quality score of 3.78, 'Something's Gotta Give' (2003) is a major popularity hit 
with 91,672 total votes. My analysis of user behavior isolated the top 5 most active reviewers, led by User 2118461 with 15 ratings, who represent the 'power users' critical for recommendation engine accuracy. Finally, by implementing Window Functions, I established a yearly competitive ranking which identified 'What the #$*! Do We Know!?' as the #1 ranked film for 2004, providing a framework for historical content benchmarking and data-driven licensing strategies.
*/