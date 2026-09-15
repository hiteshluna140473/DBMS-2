
DECLARE
    v_sal employees.ename%TYPE;
BEGIN
	v_emp_name := '&enter_employee_name';

    SELECT basicsal 
    INTO v_sal
    FROM employees
    WHERE ename = '&username';

    DBMS_OUTPUT.PUT_LINE('Basic Salary: ' || v_sal);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: student does not exist.');
    
END;
/
