create database jaylimited;

create table customers(
customer_id int primary key identity(1,1),
customer_name varchar(20)
)
ALTER TABLE customers

insert into customers values('Alice'),
('Bob'),
('Charlie')

select * from customers

create table categories(
category_id int primary key identity(1,1),
category_name varchar(20)
)

insert into categories (category_name) values 
('Electronics'),('Clothing'),('Groceries')

select * from categories


create table purchases(
purchase_id int primary key identity(1,1),
customer_id int,
category_id  int
)

insert into purchases values (1,1),(1,2),(1,3),(2,1),(2,2)

select * from purchases

select c.customer_name from customers c INNER JOIN