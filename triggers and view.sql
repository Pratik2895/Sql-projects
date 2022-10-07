#Triggers in mysql

create table student (st_roll int,age int,name varchar(30),mark float);

delimiter //
 create trigger  mark_verify
 before insert on student
 for each row
if new.mark<0 then set new.mark =50;
end if; //
 delimiter ;
 
insert into  student
 values(1,27,"pratik",68.9),
 (2,28,"krishna",-90.0);
 
select* from student;

# drop trigger mark_varify;



#Display Views

show full tables
where table_type="VIEW" ;

# drop view
# drop view vehicle_description;