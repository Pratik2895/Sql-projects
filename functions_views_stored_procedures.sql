use Classicmodels;
select * from products;
select * from orderdetails;
select productcode,productname,msrp from products
where productcode in (select productcode from orderdetails
where priceeach <100);


#Stored Procedure

create table student
(st_roll int,age int, name varchar(30),mark float);

delimiter //
create trigger mark_varify
before insert on student
for each row
if new.mark < 0 then set new.mark=50;
end if;//

insert into student
values(501,10,'ruth',75.0),(502,12,'mike',-90.0),
(503,12,'jacobes',-12.5);


select * from student;

#create views

use classicmodels;
select * from  customers;

create view cust_details
as
select customername,phone,city
from customers;


select * from cust_details;
select* from productlines;
select* from products;
create view  product_description
as
select productname,quantityinstock,msrp,textdescription
from products as p inner join productlines as pl
on pl.productline=p.productline;

select * from product_description;

#rename description
rename table product_description  to vehicle_description

#display views

show full tables
where table_type = 'view';

drop view cust_details

#windows functions
use sql_intro;
