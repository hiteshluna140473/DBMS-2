SET SERVEROUTPUT ON;

DECLARE
  
    CURSOR emp_cursor IS
        SELECT ename, dept, sal 
        FROM emp 
        ORDER BY sal DESC;
        
  
    v_name    emp.ename%TYPE;
    v_dept    emp.dept%TYPE; 
    v_salary  emp.sal%TYPE;

BEGIN
   
    OPEN emp_cursor;
    
    DBMS_OUTPUT.PUT_LINE('-------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Name       | Department     | Basic Salary ');
    DBMS_OUTPUT.PUT_LINE('-------------------------------------------');
    
    LOOP

        FETCH emp_cursor INTO v_name, v_dept, v_salary;
        
       
        EXIT WHEN emp_cursor%NOTFOUND OR emp_cursor%ROWCOUNT > 5;
        
        
        DBMS_OUTPUT.PUT_LINE(RPAD(v_name, 10) || ' | ' || RPAD(v_dept, 14) || ' | ' || v_salary);
        
    END LOOP;
    
   
    CLOSE emp_cursor;
END;
/
