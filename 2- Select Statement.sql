-- SELECT STATEMENT

-- The SELECT statement is used to work with columns and specify what columns you want to see in your output.

-- Select everything
SELECT * 
FROM Gec.employees;

-- Select a specific column
SELECT first_name
FROM employees;

-- Select multiple specific columns
SELECT first_name, last_name
FROM employees;

-- Order of columns does not matter unless explicitly required
SELECT last_name, first_name, gender, age
FROM employees;

-- More readable format
SELECT last_name, 
       first_name, 
       gender, 
       age
FROM employees;

-- Using calculations in the SELECT statement (example with employee_salary)
SELECT first_name,
       last_name,
       salary,
       salary + 100
FROM employee_salary;

-- Math operations follow PEMDAS order
SELECT first_name, 
       last_name,
       salary,
       (salary + 100) * 10
FROM employee_salary;

-- Using DISTINCT to get only unique department IDs
SELECT dept_id
FROM employee_salary;

SELECT DISTINCT dept_id
FROM employee_salary;
