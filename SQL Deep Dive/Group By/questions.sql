/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT hire_date,count(emp_no) as amount FROM employees Group by hire_date ORDER BY amount DESC

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/
SELECT title,count(title) as amount FROM employees as e inner join titles as t on e.emp_no = t.emp_no
WHERE extract (YEAR FROM hire_date) > '1991'
group by title
order by amount Desc



/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no
FROM employees as e
