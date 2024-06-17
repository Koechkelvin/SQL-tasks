use database jaylimited;

create table orders (
order_id int primary key ,
customer_id int ,
order_date date
)

insert into orders values (2043,1,'2023-06-01'),
(2044,2,'2023-06-02'),
(2045,3,'2023-06-03'),
(2046,1,'2023-06-04')

select * from orders

--9. You have a SQL database table named "orders", with columns "order_id", "customer_id", and "order_date". Write a query to update the order date for order number 2045 to "2023-07-23" and save the changes permanently to the database with the COMMIT function.

update orders set order_date='2023-7-23' where  order_id = 2045

