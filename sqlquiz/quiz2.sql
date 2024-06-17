create table sale(
sale_id int primary key identity(1,1),
product_id int,
sale_date date,
sales_amount int
)

insert into sale(
product_id,sale_date,sales_amount
)values(1,'2023-06-01',100),
		(1,'2023-06-02',150),
		(1,'2023-06-03',200),
		(1,'2023-06-04',250),
		(2,'2023-06-01',300),
		(2,'2023-06-02',350),
		(2,'2023-06-03',400),
		(2,'2023-06-04',450)


select * from sale
--Write a query to calculate the 7-day moving average of sales 
--for each product in a given range using SQL window functions.
select product_id , sale_date, sales_amount,
AVG(sales_amount) OVER (
        PARTITION BY product_id
        ORDER BY sale_date
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS moving_avg_7_day
from sale
order by product_id,sales_amount;

