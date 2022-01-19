SELECT * FROM employees;

SELECT first_name, last_name, salary
FROM employees;

SELECT department_id, department_name, manager_id, location_id
FROM departments;

SELECT first_name, job_id, department_id
FROM employees
WHERE job_id = 'IT_PROG';

SELECT first_name, last_name, hire_date
FROM employees
WHERE last_name ='King';

SELECT first_name, salary, hire_date
FROM employees
WHERE salary >= 15000;

SELECT first_name, last_name, job_id
FROM employees
WHERE job_id LIKE 'IT%';

SELECT first_name, job_id, salary
FROM employees
WHERE job_id ='IT_PROG' AND salary >= 5000;

SELECT first_name, job_id, salary
FROM employees
WHERE job_id ='IT_PROG' OR salary >= 5000;

