SELECT
 m.movie_id,title,budget,revenue,currency,unit,
 CASE
    WHEN UNIT="Billions" THEN round((revenue-budget)  * 1000,1)
    WHEN UNIT="Thousands" THEN round((revenue-budget) /1000,1)
    ELSE round((revenue-budget) ,1)
END AS profit_mln
FROM movies m
 join financials f 
on m.movie_id=f.movie_id
where industry="bollywood"
order by profit_mln desc