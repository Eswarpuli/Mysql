-- WHERE Clause:
-- -------------
-- The WHERE clause is used to filter rows of data based on conditions.

-- Return rows where salary is greater than 50000
SELECT *
FROM employee_salary
WHERE salary > 50000;

-- Return rows where salary is greater than or equal to 50000
SELECT *
FROM employee_salary
WHERE salary >= 50000;

-- Return only female employees
SELECT *
FROM employees
WHERE gender = 'Female';

-- Return only non-female employees
SELECT *
FROM employees
WHERE gender != 'Female';

-- Use WHERE clause with a date value
SELECT *
FROM employees
WHERE birth_date > '1985-01-01';

-- LIKE STATEMENT

-- % means anything after 'a' (e.g., Alice, Andy, etc.)
SELECT *
FROM employees
WHERE first_name LIKE 'a%';

-- _ means exactly 3 letters, starting with 'a' (e.g., Amy, Ann, etc.)
SELECT *
FROM employees
WHERE first_name LIKE 'a__';

-- First letter 'a', followed by 3 or more characters (e.g., April, Aaron)
SELECT *
FROM employees
WHERE first_name LIKE 'a___%';
