create database company;
show databases;
use company;
create table orders(
order_id int,
product varchar(10),
total int,
customer_id int);
show tables;
describe orders;

insert into orders values
(1,'Paper',500,5),
(2,'Pen',10,2),
(3,'Marker',120,3),
(4,'Books',1000,1),
(5,'Erasers',20,4);
select * from orders;
describe orders;

create table customers(
id int,
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
describe customers;
select * from customers;

