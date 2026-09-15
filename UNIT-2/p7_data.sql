-- 1. Setup the Environment
SET SERVEROUTPUT ON;
-- 2. Create the Customer Table
CREATE TABLE customer (
    customer_id   NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50),
    city          VARCHAR2(50)
);

-- 3. Insert Sample Data
INSERT INTO customer VALUES (101, 'Alice Smith', 'New York');
INSERT INTO customer VALUES (102, 'Bob Jones', 'London');
INSERT INTO customer VALUES (103, 'Charlie Brown', 'Paris');
INSERT INTO customer VALUES (104, 'Diana Prince', 'Gotham');

