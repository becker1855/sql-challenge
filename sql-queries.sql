-- select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
-- from employees
-- inner join salaries on employees.emp_no = salaries.emp_no;

-- select *
-- from employees
-- where hire_date >= '12/31/1985' and hire_date <= '01/01/1987';

-- select dept_managers.dept_no, departments.dept_name, dept_managers.emp_no, employees.last_name, employees.first_name, dept_managers.from_date, dept_managers.to_date
-- from dept_managers
-- inner join departments on departments.dep_no = dept_managers.dept_no
-- inner join employees on dept_managers.emp_no = employees.emp_no

-- select *
-- from employees
-- where first_name = 'Hercules' and last_name like 'B%';

-- select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
-- from dept_emp
-- inner join employees on employees.emp_no = dept_emp.emp_no
-- inner join departments on dept_emp.dept_no = departments.dep_no
-- where dept_emp.emp_no in
-- (
-- 	select dept_emp.emp_no
-- 	from dept_emp
-- 	where dept_emp.dept_no in 
-- 	(
-- 		Select departments.dep_no
-- 		from departments
-- 		where departments.dept_name = 'Sales'
-- 	)
-- );

-- select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
-- from dept_emp
-- inner join employees on employees.emp_no = dept_emp.emp_no
-- inner join departments on dept_emp.dept_no = departments.dep_no
-- where dept_emp.emp_no in
-- (
-- 	select dept_emp.emp_no
-- 	from dept_emp
-- 	where dept_emp.dept_no in 
-- 	(
-- 		Select departments.dep_no
-- 		from departments
-- 		where departments.dept_name = 'Sales' or departments.dept_name = 'Development'
-- 	)
-- );

-- select last_name, count(last_name) as Frequency
-- from employees
-- group by last_name
-- order by count(last_name) desc;
