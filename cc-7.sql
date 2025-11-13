drop database if exists college ; 
 create database college;
use college;
create table student(
student_id int primary key auto_increment ,
student_name varchar(100),
gender enum("f" , "m" ));

create table course(
course_id int   ,
course_name varchar(100),
date_of_joining date,
student_id int ,
foreign key(student_id) references student(student_id));

create table entrolment(
course_id int,
student_id int,
entrolment_id int );

insert into student (student_id,student_name,gender) values
(1001,"malar" , "f"),(1002,"abi" , "f"),(1003,"varun" , "m") , (1004, "kalai" , "m"),(1005 , "selvi" , "f");
select * from student;

insert  into course( course_id , course_name, date_of_joining, student_id) VALUES
(11, "finance" ,'2025-07-12' , 1001),
(12,"marketing" ,'2025-12-23' , 1002),
(13,"HR" , '2025-04-18', 1003),
(14,"accounts" , '2025-06-23',1004),
(15,"IT",'2025-09-10', 1005);

select * from course;


DELIMITER $$
 CREATE PROCEDURE getstudentid (in student_id_input int)
 begin
 select * from student where student_id = student_id_input;
 END $$
 DELIMITER ;
 call getstudentid(1001);
 
create view student_view as 
select student_name, student_id from student ; 
select * from student_view;


 create view Studentss_coursese_view as
 select s.student_id,c.course_name,s.student_name,s.gender
 from course  c
 join student s on c.student_id = s.student_id ;

 select * from Studentss_coursese_view;
 
 
 