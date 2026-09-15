-- Create the employee table
CREATE TABLE employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    basicsal NUMBER(10, 2)
);
-- Insert sample employee records
INSERT INTO employee (emp_id, emp_name, basicsal) VALUES (1, 'Alice Smith', 5000);
INSERT INTO employee (emp_id, emp_name, basicsal) VALUES (2, 'Bob Jones', 6200);
INSERT INTO employee (emp_id, emp_name, basicsal) VALUES (3, 'Charlie Brown', 4500);

-- Commit the changes to the database
COMMIT;
