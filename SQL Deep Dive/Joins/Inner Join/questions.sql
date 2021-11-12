
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
select o.customerid,o.orderid,c.state from orders as o
inner join customers as c on o.customerid = c.customerid
where c.state in ('OH','NY','OR')


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT
  p.prod_id,
  p.title,
  p.price,
  i.sales
FROM
  products as p
JOIN inventory As i
 ON p.prod_id = i.prod_id

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

SELECT
  e.emp_no,
  e.first_name,
  e.last_name,
  d.dept_no,
  depart.dept_name
FROM
  employees as e
inner JOIN dept_emp As d
 ON e.emp_no = d.emp_no
 inner join departments as depart on d.dept_no = depart.dept_no


