CREATE TABLE EMP(
	ETD number (5),
	ENAME varchar2(10),
	DEPTNO number(10),
	DEPTNAME varchar2(10),
	GENDER char(1),
	AGE number(5),
	BASICSAL number(5,2)
);

INSERT INTO EMP VALUES (101, 'RITU', 10 ,'SALES', 'F', 25 ,15.00);
INSERT INTO EMP VALUES (102, 'rahul', 25 ,'transpot', 'm', 20 ,25.00);