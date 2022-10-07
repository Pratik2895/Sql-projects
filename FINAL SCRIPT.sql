SELECT Category,sum(Score) as Total_score  
FROM accenture.finaldataset  
Group by Category  
order by Total_score desc  ;
