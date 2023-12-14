create database school;
show databases;
use school;
create table student(
id int NOT NULL UNIQUE PRIMARY KEY,
name varchar(50) NOT NULL DEFAULT 'unnamed',
age int NOT NULL,
class int NOT NULL
);

insert into student
(id,name,age,class)
values
(1, 'mohit', 18, 12),
(2, 'rohit', 17, 11),
(3,'Mohit',18,12),
(4,'poorvi',16,11),
(5, 'prateek', 14, 8),
(6, 'vishnu', 12, 7),
(7, 'mahesh', 17, 10),
(8, 'aparna', 16, 11),
(9, 'jatin', 17, 11),
(10, 'rohit', 13, 8);

-- Retrieve all entries from student
select * from student;
-- Retrieve name and class from student
select name, class from student;
-- Retrieve distinct name  from student
select distinct name from student;
-- Retrieve only 3 rows entry.
select * from student limit 3;
-- Retrieve rows from 4 to 8
select * from student limit 3 offset 5;
-- Sort the table by class in desc order.
select * from student order by class desc;
-- Sort the table by age(ascending) and class(descending)
-- Retrieve the data for class 12
-- Retrieve the data for id more than 5 and less than 9
drop table student;