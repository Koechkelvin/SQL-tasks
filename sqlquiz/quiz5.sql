

create table employees(
employee_id int primary key identity(1,1),
employee_name varchar(20),
department_id int,
salary int
)

insert into employees values('John Doe',1,100000),
('Jane Smith',1,95000),('Alice Brown',2,120000),
('Bob Johnson',2,110000),('Charlie Black',3,80000)

select * from employees

--5. Write a query that delivers the second-highest salary in
--an "employees" table.

select * from employees where salary

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);





select employee_name from employees  where 

select  MAX(salary) from employees where 