SET SERVEROUTPUT ON;

DECLARE

	empno customers.no%type;
	ename customers.name%type;
	deptno emp.deptno%type;
	URSOR emp IS SELECT no, name, deptno FROM emp;
BEGIN

	OPEN emp;
	LOOP
	FETCH emp into empno, ename, deptno;
	EXIT WHEN c_customers%notfound;
		dbms_output.put_line(empno || ' ' || ename || ' ' || c_addr);
	END LOOP;
	CLOSE emp;
END;
/