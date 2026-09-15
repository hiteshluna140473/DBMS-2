SET SERVEROUTPUT ON;

DECLARE

	total_rows number(2):=0;

BEGIN

IF sql%ISOPEN THEN
	dbms_output.put_line('cursor is open');
ELSE
	dbms_output.put_line( 'cursor is not open');
END IF;

	UPDATE emp SET sal = sal+(sal*5/100)
			where emp.deptno=20;

		IF sql%notfound THEN
			dbms_output.put_line('no emp selected:');
		ELSIF sql%found THEN
			total_rows:=sql%rowcount;
			dbms_output.put_line(total_rows || 'emp salary updated');	
	END IF;
END;
/