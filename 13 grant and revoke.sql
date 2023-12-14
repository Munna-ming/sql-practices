show databases;
use mysql;
show tables;
select user from user;
select * from db;
create user 'Rohit' identified by 'rohit123';
select user from user;
-- grant
grant select on bookstore.Books to 'Rohit';
flush privileges;

show grants for 'Rohit';

revoke select on bookstore.Books from 'Rohit';
drop user 'Rohit';
flush privileges;
select user from user;

