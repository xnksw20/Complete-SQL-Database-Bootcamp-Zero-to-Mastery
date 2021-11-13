
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/
SELECT e.first_name,e.last_name,hire_date,count(title)
FROM employees as e
INNer JOin titles as t on e.emp_no = t.emp_no
WHERE extract (year from hire_date) > '1991'
group by hire_date,first_name,last_name
having count(title) >= 2
order by first_name


/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/
SELECT s.emp_no,de.dept_no,count(s.salary)
from salaries as s inner join dept_emp as de on s.emp_no = de.emp_no
where de.dept_no = 'd005'
group by s.emp_no,dept_no
having count(salary) >= 15


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/
SELECT dept.emp_no,e.first_name,e.last_name,count(dept_no) as Amount
from dept_emp as dept inner join employees as e on dept.emp_no = e.emp_no
group by dept.emp_no,e.first_name,e.last_name
having count(dept_no) > 1
