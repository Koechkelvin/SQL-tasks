create database customersales;

create table customers(
customer_id int primary key,
customer_name varchar(20)
)

insert into customers values (1,'Alice'),
(2,'Bob'),(3,'Charlie')

select * from customers

create table sales (
sale_id int primary key  ,
sale_amount int,
customer_id int,
FOREIGN KEY (customer_id) references customers(customer_id)
)

insert into sales values (1,500,1),(2,300,1),(3,400,2),(4,200,2)
select * from sales

--6. Write a query that delivers the total sales for each customer
--in a database, including any with no sales.
select * from customers left Join sales on customers.customer_id=sales.customer_id