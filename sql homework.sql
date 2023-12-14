create database company;
show databases;
use company;
create table customers(
id int primary key,
first_name varchar(10),
last_name varchar(10),
age int,
country varchar(20));

show tables;
describe customers;

insert into customers values
(1,'John','Doe',31,'USA'),
(2,'Robert','Luna',22,'USA'),
(3,'David','Robinson',22,'22'),
(4,'John','Reinhardt',25,'UK'),
(5,'Betty','Doe',26,'UAE');
select * from customers;



show tables;

create table orders(
order_id int primary key,
product varchar(10),
total int,
customer_id int,
foreign key(customer_id) references customers(id)
);
show tables;
describe orders;

insert into orders values
(1,'Paper',500,5),
(2,'Pen',10,2),
(3,'Marker',120,3),
(4,'Books',1000,1),
(5,'Erasers',20,4);
select * from orders;
show tables;
use company;
show tables;
select * from customers;
select * from orders;
-- retrieve the first and last name from table
select first_name, last_name from customers;

select product,total from orders where total >=500;

select * from orders where product <> 'Paper';
select * from customers;

select distinct country from customers;
describe customers;
-- sorting orders
select * from orders order by total;
-- sorting in descending
select * from orders order by total desc;

insert into orders values
(6,'Books',500,5);

select * from orders order by total desc, product desc;
Select * from orders order by product desc, total desc;

-- retrive the distinct first name from customer table
select distinct first_name from customers;
-- retrive all the customers name whose age is between 23 and 35
select first_name, age from customers where age between 23 and 35;
select first_name , age from customers where age>23 and age<35;
select first_name , age from customers where age> 23 or age<35;
-- show limits in rows
-- retrieve top 3 high selling product
select product , total from orders order by total desc limit 3;
select product as "top 3", total from orders order by total desc limit 3;

select * from orders limit 3;
select * from orders limit 3 offset 2;
select * from orders order by total desc limit 1 offset 1;
select  product as second_highest,total from orders order by total desc limit 1 offset 1;




