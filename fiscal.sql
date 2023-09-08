SELECT 
	get_fiscal_year(s.date) as fiscal_year,
	Round (g.gross_price*s.sold_quantity,2) as gross_price_total
FROM
    fact_sales_monthly s
        JOIN
    dim_product p ON p.product_code = s.product_code
        JOIN
    fact_gross_price g ON g.product_code = s.product_code
        AND g.fiscal_year = get_fiscal_year(s.date)
WHERE
    customer_code = 90002002
group by fiscal_year
ORDER BY date DESC


