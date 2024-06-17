create database  employees_department;


create table departments(
department_id int primary key,
department_name varchar(20),

)

insert into departments values (1,'HR'),(2,'Finance')

select * from departments


create table employees (
employee_id int PRIMARY KEY ,
employee_name varchar(20),
department_id int,
salary int,
FOREIGN KEY (department_id) references departments (department_id)
)

insert into employees values (1,'John Doe',1,100000),
(2,'Jane Smith',1,95000),
(3,'Alice Brown',1,90000),
(4,'Bob Johnson',1,85000),
(5,'Charlie Black',1,80000),
(6,'David Green',1,75000),
(7,'Eve White',2,110000)

select * from employees

--7. Write a query that delivers the name of any department with more than five
--employees, along with the average salary of these employees.


SELECT d.department_name, AVG(e.salary) AS average_salary
FROM employees e
 JOIN departments d ON e.department_id = d.department_id
GROUP BY  d.department_name
HAVING COUNT(e.employee_id) > 5;
