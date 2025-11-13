create database function_db;
use   function_db;
create table teachers (
teachers_id int primary key,
 teachers_first_name varchar(100),
 teachers_last_name varchar(100),
 hire_date date );
 create table students(
 student_id int primary key ,
 student_name varchar(100),
 student_last_name varchar(100),
 join_date date);
 
 insert into teachers(teachers_id,teachers_first_name,teachers_last_name,hire_date) values
 (101,"mano","dheeran",'2025-12-05'),
 (102,"siva" , "priya" , '2025-09-06'),
 (103, "gobal" , "krishnan" , '2025-06-09'),
 (104,"jothi" , "prasanth" , '2025-03-14'),
 (105,"priya", "darshini" , '2025-08-25');
 select * from teachers;
  insert into students (student_id,student_name,student_last_name,join_date) values
  (201,"karthika" ,"devi" , '2012-12-09'),
  (202,"arun" ,"kumar" ,'2012-09-08'),
  (203,"valar" ,"mathi" , '2012-05-28'),
  (204,"mohana" , "priya" , '2012-01-30'),
  (205,"gowtham" , "shankar" , '2012-03-23');
  
  select * from students;
  
  
  ----------------- upper,lower,substring,concat functions-----------
                  
                  
                  
select teachers_id , upper(teachers_first_name) as upper_name , 
lower(teachers_last_name) as lower_name,
substring( teachers_first_name , 1,2) as substring_name,
concat(teachers_first_name," " ,teachers_last_name)  as full_name from teachers;


              --------------- Date functions--------------
select teachers_id, hire_date ,
year (now() )- year(hire_date) as Tenure_year, 
datediff (now(),year(hire_date)) as Tenure_days from teachers;  
select student_id, join_date ,year(now() )-year(join_date)  as year_join ,
datediff(now(),(join_date))   as date_join from students;




delimiter  //

create function getfullname (student_name varchar(100), student_last_name varchar (100))
returns  varchar(200)
deterministic 
begin

return concat(student_name,' ',student_last_name);
 end   //
 
select getfullname (student_name,student_last_name) from students ;

