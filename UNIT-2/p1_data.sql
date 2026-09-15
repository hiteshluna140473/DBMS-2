CREATE TABLE emp (
    empno    NUMBER(4) PRIMARY KEY,
    ename    VARCHAR2(10),
    job      VARCHAR2(9),
    sal      NUMBER(7,2),
    deptno   NUMBER(2)
);

INSERT INTO emp VALUES (101, 'biplab',   'PRESIDENT', 5000,  10);
INSERT INTO emp VALUES (102, 'bhargav',  'MANAGER',  2450, 10);
INSERT INTO emp VALUES (103, 'ronak', 'CLERK',  1300, 10);
INSERT INTO emp VALUES (104, 'hitesh',  'MANAGER', 2975,  20);
INSERT INTO emp VALUES (105, 'mihir',   'ANALYST', 3000,  20);

COMMIT;
