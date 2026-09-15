CREATE TABLE emp (
    eid       NUMBER(5) PRIMARY KEY,
    ename     VARCHAR2(50),
    age       NUMBER(3),
    basicsal  NUMBER(10, 2)
);

INSERT INTO emp (eid, ename, age, basicsal) VALUES (101, 'Alice Smith', 30, 50000.00);
INSERT INTO emp (eid, ename, age, basicsal) VALUES (102, 'Bob Jones', 45, 75000.50);
INSERT INTO emp (eid, ename, age, basicsal) VALUES (103, 'Charlie Brown', 28, 42000.00);
INSERT INTO emp (eid, ename, age, basicsal) VALUES (104, 'Diana Prince', 35, 95000.00);

COMMIT;
