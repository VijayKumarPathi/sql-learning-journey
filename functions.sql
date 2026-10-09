show databases;
use training_center;
show tables;
select * from employee;

select instr(reverse('vijay'),'y');
select reverse(instr('vijay','y')) as row_no;

-- window functions
select *, row_number() over (order by salary) as rownumber from employee;
select *, rank() over (order by salary) as ranknumber from employee;
select emp_name,salary,department,sum(salary) over (partition by city) as rowsalary from employee;
select emp_name,salary,avg(salary) over() as employee_salary from employee;
select emp_name,salary,max(salary) over() as highest_salary from employee;
select emp_name,salary,min(salary) over() as lowest_salary from employee;
select emp_name,count(*) over() as total_number_of_Employees from employee;
select *,row_number() over(order by salary asc) as counting_salary from employee;
select *,row_number() over(order by salary desc) as counting_salary from employee;

-- partition by
select *,row_number() over(partition by department) as total_salary from employee;
SELECT *,
       ROW_NUMBER() OVER(
           PARTITION BY department
           ORDER BY salary DESC
       ) AS row_num
FROM employee;