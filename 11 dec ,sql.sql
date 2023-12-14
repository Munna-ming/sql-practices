create database bookstore;
show databases;
use bookstore;
create table category(
Id int primary key,
c_name varchar(20));

alter table category modify c_name varchar(20) not null;

INSERT INTO category 
VALUES (1, 'Cat-A'),
(2, 'Cat-B'),
(3, 'Cat-C'),
(7, 'Cat-D'),
(8, 'Cat-E'),
(4, 'Cat-F'),
(10,'Cat-G'),
(12,'Cat-H'),
(6, 'Cat-I');

select * from category;


create table Authors(
Id int primary key,
A_name varchar(20));

alter table Authors modify A_name varchar(20) not null;

INSERT INTO Authors
VALUES (1, 'Author-A'),
(2, 'Author-B'),
(3, 'Author-C'),
(10, 'Author-D'),
(12, 'Author-E');

select * from Authors;

create table Books(
Id int auto_increment primary key,
b_name varchar(20) not null,
price int,
cat_id int,
aut_id int,
foreign key(cat_id) references category(Id),
foreign key(aut_id) references Authors(Id)
)auto_increment = 100;


INSERT INTO Books 
(b_name,price,cat_id,aut_id)
VALUES ( 'Book-A', 100, 1, 2),
( 'Book-B', 200, 2, 2),
( 'Book-C', 150, 3, 2),
( 'Book-D', 100, 3,1),
( 'Book-E', 200, 3,1),
( 'Book-F', 150, 4,1),
( 'Book-G', 100, 7,10),
( 'Book-H', 200, 8,12),
('Book-I', 150, 7,3);

select * from Books;

select b.id, b_name,c_name,price from Books b, category c
where b.cat_id = c.id;

select b.id, b_name,a_name,price from Books b, Authors a
where b.aut_id = a.id;

select a.id,a_name, b_name, price from Authors a, Books b
where a.id = b.aut_id;

select a.id,a_name,count(*) no_of_books from Authors a, Books b
where a.id = b.aut_id
group by a.id;

select a.id,a_name,count(*) no_of_books from Authors a, Books b
where a.id = b.aut_id
group by a.id having no_of_books>2;

select a.id,a_name,count(*) no_of_books ,round(avg(price),0) 
 from Authors a, Books b
where a.id = b.aut_id
group by a.id having no_of_books>2;

select a.id,a_name,count(*) no_of_books ,round(avg(price),0) avg_price
from Authors a, Books b
where a.id = b.aut_id
group by a.id having avg_price>150;

-- Retrieve Category id wise no of books 
select  c.id, count(*) no_of_books from category c, Books b
where c.id = b.cat_id
group by c.id;

select * from Books;
-- Category id wise total earning from the books..
select c.id, sum(price) as total_earnings from category c, Books b
where c.id= b.cat_id
group by c.id;

select * from Authors;

-- what is author_id wise ,the min and max price of the book
select a.id,min(price) as min_price , max(price) as max_price from Authors a, Books b
where a.id = b.aut_id
group by a.id;

select * from Books;

-- display book name, category name and price for book id =103;
select b_name,c_name,price  from category c, Books b where  c.id = b.cat_id and b.id= 103;

-- retrive all the rows where book name ends with "Vowels"
select b_name from Books where b_name like '%a' or b_name like '%e' or b_name like'%i' or b_name like '%o' or b_name like '%u';

-- display author wise : author_name, no of books, min price of book whose min price of book >150
select a.id,A_name,count(*) no_of_books, min(price) as min_price from Authors a, Books b 
where a.id = b.aut_id 
group by a.id having min_price> 150;






