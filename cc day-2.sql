--- coding challenge day-2---

create database online_bookstore;
use online_bookstore;
create table Books (
book_ID int primary key ,
branch_name varchar(100) ,price decimal (10,2) ,
publisher_name varchar(100) unique
);
create table Orders (
 order_ID int   , 
order_date date , 
customer_name varchar (100),
 book_ID int,
foreign key (book_ID) references Books(book_ID)
);
select * from Books ;
select* from Orders;
alter table Books
add column ISBN INT unique;
delete  from Books where book_ID = 22;
truncate table orders ;

   









