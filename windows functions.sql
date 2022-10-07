#(windowsfunction which gives the highest in  segment details over partion by department/country)

SELECT country,customerName,sum(creditLimit) over (partition by country ) as sum_creditlimit_country FROM customers;

select * 
from customers
where country='Austria';

#rownum

select row_number() over (order by creditLimit ASC) as row_num,
country,customerName,creditLimit from customers  order by creditLimit,customerNumber;

select row_number() over (partition by country ) as row_num,
country,customerName,creditLimit from customers  order by country;

create table demo(name_id int,studentname  varchar(20));
insert into demo
values
(104,"krishna")
,(104,"krishna");


select* from demo;

select name_id,studentname, row_number() over (partition by name_id ,studentname order by name_id) as row_num
from demo;

# Rank function

create table demo1 (var int);
insert into demo1
values(101),(102),(103),(104),(105),(104),(105);

select var ,rank() over (order by var) as test_rank
from demo1;


#First Value()
select* from customers;

SELECT country,customerName,first_value(customerName) over (partition by country order by creditLimit desc) as highest_credit_getter,creditLimit FROM customers;

SELECT country,customerName,first_value(customerName) over (order by creditLimit desc) as highest_credit_getter,
first_value(country) over (order by creditLimit desc) as highest_credit_gettercountry FROM customers;

