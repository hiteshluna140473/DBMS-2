SET SERVEROUTPUT ON;
DECLARE

    cursor emp_cursor IS
        select ename, sal 
        from emp 
        ORDER BY sal DESC;

BEGIN

    DBMS_OUTPUT.PUT_LINE('Top 3 Highest Paid Employees:');
    
    FOR emp_rec IN emp_cursor LOOP
   
        DBMS_OUTPUT.PUT_LINE('Name: ' || emp_rec.ename || ' | Salary: ' || emp_rec.sal);
          
        EXIT WHEN emp_cursor%ROWCOUNT = 3;
    END LOOP;
END;
/




