/*
*  Calculate the total amount of employees per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/
select dept_no,count(emp_no) as "Total Employee" from dept_emp
group by 
    grouping sets (
        (),
        (dept_no)
    )
order by dept_no
/*
*  Calculate the total average salary per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/

SELECT
  dept_no,
  avg( salary ) as"AVG salaries"
FROM
  salaries as s
JOIN dept_emp as dep USING
( emp_no )
GROUP BY grouping sets( ( ) , ( dept_no ) )
ORDER BY dept_no
