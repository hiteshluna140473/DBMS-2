SET SERVEROUTPUT ON;

DECLARE

	total_rows number(2):=0;
	cursor emp1 is select sal from emp where 
		deptno=20 for update of sal;
	sal emp.sal%TYPE;

BEGIN
open emp1;

IF emp1%ISOPEN THEN
	dbms_output.put_line('cursor is open');
ELSE
	dbms_output.put_line( 'cursor is not open');
END IF;
LOOP
	FETCH emp1 into sal;
	EXIT when emp1%notfound;

	UPDATE emp SET sal = sal+(sal*5/100)
			where CURRENT OF emp1;

		IF sql%notfound THEN
			dbms_output.put_line('no emp selected:');
		ELSIF sql%found THEN
			total_rows:=sql%rowcount;
			dbms_output.put_line(total_rows || 'emp salary updated');	
		END IF;
end loop;
END;
/