create database organisation;
show databases;
use organisation;
create table employee(
emp_id int,
department varchar(2),
profession varchar(20),
salary int
);

alter table employee  modify department char(2) not null;

select * from employee;
insert into employee values
(1,'A1','Software developer',30000),
(2,'A2', 'Data engineer',40000),
(3,'A3','Business analyst',25000),
(4,'A4','Data scientist',50000),
(5,'A5','System analyst',35000);


