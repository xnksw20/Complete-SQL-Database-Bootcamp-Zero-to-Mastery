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

SELECT e.emp_no
FROM employees as e


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no
FROM employees as e
