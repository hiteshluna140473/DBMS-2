SET SERTVEROUTPUT ON;

DECLARE

    v_eid NUMBER := &Enter_Employee_ID; 

BEGIN
 
    DELETE FROM employees 

    WHERE eid = v_eid;

    COMMIT; 

    DBMS_OUTPUT.PUT_LINE('Record Deleted Successfully.');

END;
/
