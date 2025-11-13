create database hospital;
use hospital;
create table patients (
patient_id int primary key,
patient_name varchar(100) ,
age int ,
gender enum ('M' , 'F'),
Admission_date date
);
alter table patients
add column Doctor_assigned varchar(50);
select * from patients ;
alter table patients
modify patient_name varchar(150);
alter table patients
rename  patient_info ; 
truncate table patient_info;
drop table patient_info;



--- day 1 challange completed---



