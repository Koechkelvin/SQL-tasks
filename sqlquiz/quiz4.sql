create table products (
product_id int primary key identity(1,1),
product_name varchar,
price int
)



alter table products
alter column product_name varchar(20)

insert into products values ('Laptop',1000),('Laptop',1200),
('Phone',800),('Tablet',600),('Tablet',650)

select * from products

--Write a query that retrieves products with the same 
--name but different prices.

select product_name from products GROUP BY  product_name
HAVING COUNT(DISTINCT price)>1