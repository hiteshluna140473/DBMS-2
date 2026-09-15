CREATE TABLE EMP(
	EID NUMBER(5),
    ENAME VARCHAR2(10),
    DEPTNO NUMBER(10),
    GENDER CHAR(5),
	AGE NUMBER(7),
	BASICSAL NUMBER(7,2)
);
create table emp_backup as
select * from emp where 1=0;

INSERT INTO EMP VALUES(102,'priya',20,'f',23,5000.00);
INSERT INTO EMP VALUES(103,'kabir',30,'m',21,5400.00);