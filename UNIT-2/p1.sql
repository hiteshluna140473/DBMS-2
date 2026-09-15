SET SERVEROUTPUT ON;

BEGIN
  
    UPDATE emp
    SET sal = sal * 1.10
    WHERE deptno = 10;


    IF SQL%ROWCOUNT = 0 THEN

        	DBMS_OUTPUT.PUT_LINE('No employee records found in department 10. No salaries were updated.');
    ELSE

        	DBMS_OUTPUT.PUT_LINE('Salary successfully updated(raised by 10% ): '|| SQL%ROWCOUNT);

    END IF;
    
EXCEPTION

    WHEN OTHERS THEN

        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);

END;
/
