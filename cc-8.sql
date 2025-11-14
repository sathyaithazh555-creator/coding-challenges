---- TRIGGERS AND TRANSACTIONS----
create database sales; 
use sales;
 
 
 create table orders(
 order_id int primary key ,
  order_date date ,
  customer_name varchar(30),
  amount decimal (10,2));
   create table  order_history( order_id int primary key,
   order_date date ,
   customer_name varchar(30),
   delete_time timestamp);
    insert into orders (order_id,customer_name, order_date,amount) values
    (11,'mithran' , '2025-04-23',2000),
    (12,'madhu' ,'2025-09-12',2500),
    (13,'selvi','2024-06-25',3000),
    (14,'arul' , '2025-04-21', 3500);
    
    DELIMITER $$
    
    CREATE TRIGGER after_order_delete after delete on orders
    for each row
    begin
    insert into order_history (order_id, customer_name, order_date, amount) values
    (old.order_id,old.customer_name,old.order_date,old.amount);
    end $$

	DELIMITER ;
   
    SELECT * FROM order_history;
    
    CREATE user  "junior_analyst"@"localhost"   IDENTIFIED by "password12345";
    GRANT select on orders to "junior_analyst"@"localhost";
    REVOKE select on orders from "junior_analyst"@"localhost";
    
    create table accounts( account_id int primary key,
    account_name varchar(50),
    balance decimal(10,2));
    insert into  accounts (account_id,account_name,balance) values
    (100,"guna",20000),
    (110,"varun",22000),
    (120,"nila",25000),
    (130,"teju",21000);
   
   UPDATE accounts set balance = balance + 1000
   where account_id=100;
   savepoint sp1;
   select * from accounts;
   update accounts set balance = balance - 2000
   where account_id =120;
   select * from accounts;
   rollback;
    select * from accounts; 
    commit;