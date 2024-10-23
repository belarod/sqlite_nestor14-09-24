SELECT *
FROM employees
LEFT JOIN departments ON employees.dptoid = departments.dptoid;

--

SELECT *
FROM employees
INNER JOIN departments ON employees.dptoid = departments.dptoid;

--

SELECT DISTINCT *
FROM departments
INNER JOIN employees ON departments.dptoid = employees.dptoid;