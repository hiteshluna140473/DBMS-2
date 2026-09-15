DECLARE
    v_deptno emp.deptno%type := &deptno;
    no_dept_found EXCEPTION;
    v_count NUMBER := 0;
    
    CURSOR emp_cut IS 
        SELECT * FROM emp 
        WHERE deptno = v_deptno;
        
    -- Fixed: This variable declaration must sit outside the cursor definition
    emp_rec emp%ROWTYPE; 

BEGIN
    
    SELECT count(*)
    INTO v_count
    FROM emp
    WHERE deptno = v_deptno;

    IF v_count = 0 THEN
        RAISE no_dept_found;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Found ' || v_count || ' employee(s) in department ' || v_deptno || ':');
        DBMS_OUTPUT.PUT_LINE('-------------------------------------------');
        
        OPEN emp_cut;
        LOOP
            FETCH emp_cut INTO emp_rec;
            EXIT WHEN emp_cut%NOTFOUND;
            
         
            DBMS_OUTPUT.PUT_LINE('ID: ' || emp_rec.eid || ' | Name: ' || emp_rec.ename || ' | Salary: $' || emp_rec.basicsal);
        END LOOP;
        CLOSE emp_cut;
    END IF;

EXCEPTION
    WHEN no_dept_found THEN
        DBMS_OUTPUT.PUT_LINE('Error: No employees found in department ' || v_deptno);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
END;
/

		