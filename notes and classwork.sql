show databases;
use company;
show tables;
select * from customers;
use school;
show tables;
select * from student;
use company;
show tables;
drop table student;
show tables;
select * from customers;
-- retrieve age and country of all customers
select age, country from customers;
-- select rows if age is less than 27
select age from customers where age < 27;
-- select the age and country of customers whose age is less than or equal to 28
select age, country from customers where age <= 28;
-- select the countries of customers whose age is greater than 27
select country from customers where age > 27;
-- select customers whose age is equal to 22
select age from customers where age = 22;
-- select customers whose age is not equal to 22
select age from customers where age <> 22;
-- select rows if country is USA
select country from customers where country = 'USA';
-- select rows if both the age > 23 and last_name = 'Doe' conditions are TRUE
select age, last_name from customers where age > 23 and last_name = 'Doe';
-- select rows if either of the conditions age > 23 or country = 'USA' is TRUE
select age ,country from customers where age > 23  or country = 'USA';
-- Select all the columns from the Products table for products whose quantity is not equal to 25 and price is greater than 160

-- select rows if country is not UK
select country from customers where country <>'UK';
-- select customers if age > 23 and country is both 'USA' or 'UK'
select age, country from customers where age > 23 and country = 'USA' or 'UK';
-- find the minimum sale from order table
select * from orders;
select total  from orders where total =(select min(total) from orders);
select min(total) as min_sale from orders;

--  find the maximum sale from order table
select total from orders where total = (select max(total) from orders);

-- find the product name with minimum sale
select product,total from orders where total = (select min(total) from orders);
-- find the product name with maximum sale
select product,total from orders where total = (select max(total) from orders);
select* from customers;
-- find the no of customer from country UK
select country,count(*) as 'no of customers' from customers where country = 'UK';

use school;
select * from student;
-- write a query to find the no of students of class 10
select class,count(*) as 'no of student' from student where class=10;
