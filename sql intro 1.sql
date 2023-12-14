show databases;
create database emp;
show databases;
select database();
use emp;
select database();
drop database emp;
show databases;
create database students;
show databases;
use students;
create table  details(
  Name varchar(50),
  Roll_no int);
show tables;
drop table details;
show tables;
create table department(
  Name varchar(50),
  epl_id int);
  show tables;
  create table students(
  Name varchar(50),
  Id int);
  show tables;
alter table department add no_of_emp int;
  describe department;
  alter table department drop no_of_emp;
  describe department;
alter table department modify epl_id varchar(10);
alter table department change epl_id emp_id int;
describe department;
show databases;
create database tgc1;
select database();
use tgc1;
create database xyz;
select database();
use xyz;
select database();
drop database xyz;
show databases;

create table person(
p_id int,
P_name varchar(25),
Age int 
);
show tables;
describe person;

drop table person;
show tables;
create table person(
p_id int,
P_name varchar(25),
Age int 
);

create table marks(
Sub_id int unique not null,
Sub_name varchar(25) not null,
Grade varchar(2) default 'A'
);

show tables;

insert into marks values
(1, 'Marks', 'B+');

select * from marks;
select Sub_name from marks;

insert into marks values
(2, 'Hindi', 'A+');

select * from marks;
insert into marks(Sub_id,Sub_name)
values
(3, 'Science');
select * from marks;
insert into marks (Sub_id,Grade)
values
(4,'B');
select * from marks;


