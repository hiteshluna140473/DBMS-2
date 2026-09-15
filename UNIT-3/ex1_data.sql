
CREATE TABLE customers (
    customer_id NUMBER,
    first_name  VARCHAR2(50),
    last_name   VARCHAR2(50),
    email       VARCHAR2(100)
);

INSERT INTO customers VALUES (1, 'John', 'Doe', 'john.doe@example.com');

INSERT INTO customers VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com');
