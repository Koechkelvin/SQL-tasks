use database jaylimited;

create table employees1(
employee_id int primary key,
employee_name varchar(20),
manager_id int
)

insert into employees1 values (1,'John Doe',NUll),
(2,'Jane Smith',1),(3,'Alice Brown',1),
(4,'Bob Johnson',2),(5,'Charlie Black',NULL)

select * from employees1


--8. Write a query that delivers a list of employees without
--an assigned manager.
select employee_name from employees1 where manager_id  is NULL
