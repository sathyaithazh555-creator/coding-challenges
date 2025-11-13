create database university;
use university;
create table pupil ( 
pupil_ID int primary key,
pupil_name varchar (100),
department_name varchar(200),
gender enum ("M" , "F"),
email varchar (100),
GPA decimal (10,2)
);
insert into pupil (pupil_ID,pupil_name,department_name,gender,email,GPA) value
(101, "depika", "commerce", "F", NULL, 8.7),
(102,"durga","chemistry","F","durgachem@gmail.com",8.2),
(103, "bharath","physics","M","bharathphy@gmail.com", 8.8),
(104,"logu", "maths", "M" , "logumaths@gmail.com",7.9),
(105,"pavithra", "tamil","F","pavitamil@gmail.com",7.4),
(106,"ithazhya","english","F",NULL,9.9);
SELECT * from pupil;


select distinct department_name from pupil;
select pupil_ID,pupil_name from pupil where email IS NULL;
SELECT pupil_ID,pupil_name from pupil where email is not null;
select pupil_name,department_name,gender,GPA from pupil  where GPA between 7.0 and 9.0;
SELECT pupil_name,department_name,gender,GPA from pupil where GPA not between 8.0 and 9.0;
select pupil_name,department_name,gender,GPA from pupil where pupil_ID in (102,105,106);





