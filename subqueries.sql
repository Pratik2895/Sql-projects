


-- Select a movie with highest imdb_rating
	-- without subquery--

SELECT 
    * FROM
    movies
ORDER BY imdb_rating DESC
LIMIT 1;--
    
    
select * from movies where imdb_rating=(select max(imdb_rating) from movies);

-- Select a movie with highest and lowest imdb_rating
	-- without subquery
	select * from movies where imdb_rating in (1.9, 9.3);

	-- with subquery
	select * from movies where imdb_rating in (
        				(select min(imdb_rating) from movies), 
    					(select max(imdb_rating) from movies)
						);

-- Select all the actors whose age is greater than 70 and less than 85
		select 
			actor_name, age
		FROM 
			(Select
					name as actor_name,
					(year(curdate()) - birth_year) as age
				 From actors
				) AS actors_age_table
		WHERE age > 70 AND age < 85;

