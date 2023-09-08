SELECT 
            a.name,group_concat(m.title separator "|") as movies_names,count(m.title) as no_movies
	FROM actors a
	JOIN movie_actor ma ON a.actor_id=ma.actor_id
	JOIN movies m  ON m.movie_id=ma.movie_id
	GROUP BY a.actor_id
    order by no_movies desc;
