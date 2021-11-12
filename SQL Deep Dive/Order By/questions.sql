/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
select * from employees
order by first_name ASC,last_name DESC ;

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
select first_name,last_name,EXTRACT (YEAR FROM AGE(birth_date)) from employees
order by AGE(birth_date) ASC ;

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
select first_name,last_name,hire_date from employees
Where first_name ilike 'k%'
order by hire_date ASC ;
