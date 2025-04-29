-- GROUP BY
-- Group rows with the same values and run aggregate functions on them

SELECT *
FROM employees;

-- Grouping by gender
SELECT gender
FROM employees
GROUP BY gender;

-- Invalid: Selecting a column not included in GROUP BY without aggregation
-- Will throw error in strict SQL modes
-- SELECT first_name FROM employees GROUP BY gender;

-- Grouping occupations
SELECT occupation
FROM employee_salary
GROUP BY occupation;

-- Grouping by occupation and salary (to see variations)
SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

-- Aggregate functions grouped by gender
SELECT gender, AVG(age)
FROM employees
GROUP BY gender;

SELECT gender, MIN(age), MAX(age), COUNT(age), AVG(age)
FROM employees
GROUP BY gender;



-- ORDER BY
-- Sort result-set in ascending (default) or descending (DESC) order

-- Order employees by first name (ascending)
SELECT *
FROM employees
ORDER BY first_name;

-- Order by first name (descending)
SELECT *
FROM employees
ORDER BY first_name DESC;

-- Order by gender and then age (ascending)
SELECT *
FROM employees
ORDER BY gender, age;

-- Order by gender and age (both descending)
SELECT *
FROM employees
ORDER BY gender DESC, age DESC;

-- Using column positions instead of names (not recommended)
-- Column 5 = gender, Column 4 = age (as per structure)
SELECT *
FROM employees
ORDER BY 5 DESC, 4 DESC;
