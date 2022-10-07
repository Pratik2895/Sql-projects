use classicmodels;
show tables;
select * from products;
select* from orderdetails;

#subqueries 4 types select, insert,update,delete 

SELECT 
    productCode, MSRP
FROM
    products
WHERE
    productcode IN (SELECT 
            productCode
        FROM
            orderdetails
        WHERE
            priceEach < 100);
            
            
#stored procedure

delimiter &&
create procedure top_products()
begin
select productName,productLine,MSRP
FROM products
where MSRP>100;
END  &&
delimiter ;


call top_products();


#sp using in parameters

delimiter //
create procedure sortbymsrp(IN var int)
begin
select productName,productLine,MSRP
FROM products
where MSRP>100
order by MSRP DESC LIMIT var;
END //
delimiter ;

call sortbymsrp(15);

delimiter //
create procedure update_MSRP(IN temp_name varchar(30),new_msrp float)
begin
update products
set MSRP=new_msrp
where productName=temp_name;
end; //
delimiter ;

call update_MSRP('2001 Ferrari Enzo',220.56);


#sp using out

delimiter //
create procedure count_productLine(OUT temp_count int)
begin
select count(productName) into temp_count
where productLine='Classic Cars';
end; //
delimiter ;

call count_productLine(@product_count);
select @product_count as productline_count;