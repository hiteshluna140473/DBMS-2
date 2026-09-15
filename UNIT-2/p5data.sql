CREATE TABLE employees (
    employee_id   NUMBER PRIMARY KEY,
    first_name    VARCHAR2(50),
    salary        NUMBER(10,2),
    department_id NUMBER
);
--insert 10
INSERT INTO employees VALUES (101, 'Alice', 5000, 10);
INSERT INTO employees VALUES (102, 'Bob', 6000, 10);

--Insert  Department 20
INSERT INTO employees VALUES (103, 'Charlie', 4500, 20);
INSERT INTO employees VALUES (104, 'David', 7000, 20);


