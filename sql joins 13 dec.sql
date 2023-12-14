show databases;
use company;
select * from customers;
insert into customers values
(6,'Vikram','Kumar',21,'India'),
(7,'Rahul','Kumar',22,'India'),
(8,'Vicky','Kumar',21,'India'),
(9,'Rohan','Gupta',24,'India');


select * from orders;

select * from customers c
join orders o
on c.id = o.customer_id;

select * from orders o
join customers c
on c.id = o.customer_id;


select * from customers c
left join orders o
on c.id = o.customer_id;

select * from orders o
left join customers c
on c.id = o.customer_id;

select * from customers c
right join orders o
on c.id = o.customer_id;

select * from orders o
right join customers c
on c.id = o.customer_id;


select * from customers c
full outer join orders o
on c.id = o.customer_id;

select * from orders o
full outer join customers c
on c.id = o.customer_id;

