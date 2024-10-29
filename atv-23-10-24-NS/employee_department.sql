SELECT * --employees.employeename AS nome_empregado, departments.dptoname AS nome_departamento
FROM employees
LEFT JOIN departments ON employees.dptoid = departments.dptoid;

--

SELECT * --employees.employeename AS nome_empregado, departments.dptoname AS nome_departamento
FROM employees
INNER JOIN departments ON employees.dptoid = departments.dptoid;

--

SELECT DISTINCT * --departments.dptoname AS nome_departamento (distinct p/ nao duplicar os nomes)
FROM departments
INNER JOIN employees ON departments.dptoid = employees.dptoid;

SELECT
dptoname AS nome_departamento,
COUNT(*) AS pessoas_por_departamento
FROM departments
LEFT JOIN employees ON departments.dptoid = employees.dptoid
GROUP BY departments.dptoname
