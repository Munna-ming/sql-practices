show databases;
use school;
show tables;
select * from student;
update student set age = 20 where name ='poorvi';
select * from student where name = 'poorvi';
update student set name = 'Jatin', age = 15, class = 10 where id = 9;
select * from student where id = 9;
update student set age = 19 where class = 12;
select * from student where class = 12;
delete from student where name= 'mohit';
select * from student;


select * from student where name in ('poorvi','mahesh','Jatin');
select * from student where name not in ('poorvi','mahesh','Jatin');

-- find the minimun age from the table 
select min(age) as min_age from student;
-- find the maximun age from the table
select max(age) as max_age from student;
-- count the number of rows in the table
select count(*) as total_row from student;
select distinct class from student;
select count(distinct class) from student;
-- average age of student from class 11
select * from student where class= 11;
select avg(age) as avg_age from student where class =11;
select round(avg(age),2) as avg_age from student where class =11;
select round(avg(age),0) as avg_age from student where class =11;

select count(*) as no_of_students,class from student where class=11;

show databases;
use company;
show tables;
select * from orders;
select * from customers;
update customers set country = 'UK' where first_name = 'David';

select sum(total) as total_sale from orders;

select sum(total) as book_sale from orders where product ='Books';

select * from customers;
select concat(first_name," ",last_name) as full_name,age,country from customers;
show databases;
use school;
show tables;
select * from student;
-- find the minimum age in the table
select age from student where age = (select min(age) from student);
-- find the maximum age in the table 
select * from student where age = max(age);

-- 7 December
-- update the name of the person from mahesh to magna
select * from student;
update student set name='pregna' where name='mahesh';
-- delete the entry of student having id =4
delete from student where id=4;
-- no of entries for id>5
select count(*) from student where id>5;
select count(id) from student where id>5;

-- like
select * from student where name like 'p%';
-- inserting in table
insert into student values
(1,'preeti',18,7),
(3,'pumnam',19,10);

-- name of student ending eith a
select * from student where name like '%a';
-- name of student having 'a' in their names
select * from student where name like '%a%';
-- name of student having double ee
select * from student where name like '%ee%';

-- name starting with p and end with k
select * from student where name like 'p%k';

select * from student;
-- inserting
insert into student values
(4,'priyanka',16,9),
(11,'priyanshu',19,11);
-- name starting with pr then two letters and end with a
select * from student where name like 'pr__%a';
-- name starting with pr then two letters and end with u
select * from student where name like 'pr__%u';

-- group by
-- classwise no. of student
select class,count(*) from student group by class;
-- in order
select class,count(*) from student group by class order by class;
-- agewise no. of student
select age,count(*) as 'no of students' from student group by age order by age;
-- find the minimun  age of student in each class
select class,min(age) from student group by class order by class;
-- find the maximum age of student in each class
select class,max(age) from student group by class order by class;
-- average age of student in each class
select class,avg(age) from student group by class order by class;
-- round off average of student age
-- 2 in round off means after decimal two values
select class,round(avg(age),2) as Avg_age from student group by class order by class;

use company;
select * from orders;
insert into orders values
 (7,'Paper',100,3),
(8,'Pen',600,2),
(9,'Marker',700,1),
(10,'Erasers',300,4);
select product,sum(total) 
from orders
group by product
order by sum(total) desc;

-- customers wise total purchase
select customer_id,sum(total) from orders
group by customer_id
order by sum(total)desc;
select * from customers;

-- retrieve all the name of customers having 'o' in their names
select concat(first_name," ",last_name) as full_name
from customers
where concat(first_name," ",last_name) like '%o%';

-- retrieve all the name of customers end with'n'
select concat(first_name," ",last_name) as full_name
from customers
where concat(first_name," ",last_name) like '%n%';

-- retrieve all the country name start with 'u' and end with 'a' or 'g'
select * from customers where country like 'U%A'or 'U%G';
-- country wise no of customers
select country,count(*) as 'no of customers' from customers group by country order by country;
-- age wise no of customers
select age,count(*) as 'no of customers' from customers group by age order by age;







 


