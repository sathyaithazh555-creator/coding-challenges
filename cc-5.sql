

insert into entrolment( course_id,student_id,entrolment_id) values
(11,1001,10), (12,1002,20),(13,1003,30),(14,1004,40),(15,1005,50);


select * from entrolment;


select * from student inner join course on student.student_id = course.student_id 
inner join entrolment on course.course_id = entrolment.course_id;


select  student.student_name, course.course_name from student left join course on student.student_id = course.student_id;

select  student.student_name, course.course_name from student right join course on student.student_id = course.student_id;


create table present( pupil_id int primary key auto_increment,
pupil_name varchar(50),
department varchar(50));

insert into present (pupil_id,pupil_name,department) values
(11, "veni" , "electrical"),
(12, "soniya","mechanical"),
(13,"madan","civil"),
(14,"ajay","electronics"),
(15,"vijay","auto_mobiles");

create table  absent ( pupil_id int primary key auto_increment,
pupil_name varchar(50),
department varchar(50));
insert into present (pupil_id,pupil_name,department) values
(11, "veni" , "electrical"),
(12,"malar","data_science"),
(13,"manju" , "beautician"),
(14,"ajay","electronics"),
(15,"vijay","auto_mobiles");
  select pupil_id, pupil_name,department from present  union  select pupil_id ,pupil_name,department from absent ;
  select pupil_id ,pupil_name , department from present where department ="electrical" 
  union all select  pupil_id,pupil_name,department from absent where department = "electrical";
  
  




              
 



