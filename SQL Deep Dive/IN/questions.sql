/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/
-- Answers : 6
SELECT
  count(customerid)
FROM
  orders
where customerid in (7888, 1082, 12808, 9623)


/*
* DB: World
* Table: city
* Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
*/
--Answer : 12
SELECT
  count("city"."name")
FROM
  city
where district in ('Zuid-Holland', 'Noord-Brabant', 'Utrecht')
