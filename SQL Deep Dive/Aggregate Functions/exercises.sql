-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 


-- Question 1: What is the average salary for the company?
-- Table: Salaries
-- Answer : 63810.744836143706

-- Question 2: What year was the youngest person born in the company?
-- Table: employees
-- Answer : 1965


-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 

-- Question 1: How many towns are there in france?
-- Table: Towns
-- Answer : 36684


-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage
select count(countrycode) from countrylanguage
where isofficial = true;
-- Answer : 238

-- Question 2: What is the average life expectancy in the world?
-- Table: country
-- Answer : 66.486

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city
-- Answer : 185001.75


