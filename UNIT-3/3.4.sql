SET SERVEROUTPUT ON;

DECLARE
    v_sal employees.ename%TYPE;

BEGIN
    v_ename := '&enter_employee_name';
    
    SELECT basicsal INTO v_sal 
    FROM employees 
    WHERE age = 50;
    
    DBMS_OUTPUT.PUT_LINE('Basic Salary: ' || v_sal);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: employee does not exist.');
END;
/
