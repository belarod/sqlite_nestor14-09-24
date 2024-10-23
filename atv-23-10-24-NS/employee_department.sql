CREATE TABLE departments(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE employees(
    id INT PRIMARY KEY,
    name VARCHAR(50),

    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);