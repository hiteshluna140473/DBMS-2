BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE EMP';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/

CREATE TABLE EMP (
    EMP_ID NUMBER(5),
    EMP_NAME VARCHAR2(30),
    SALARY NUMBER(10,2),
    COMM NUMBER(10,2)
);

INSERT INTO EMP VALUES (10, 'Hitesh', 25000, 5000);
INSERT INTO EMP VALUES (20, 'Rahul', 30000, NULL);
INSERT INTO EMP VALUES (30, 'Amit', 28000, 3000);

COMMIT;

SET SERVEROUTPUT ON;

DECLARE
    v_empno EMP.EMP_ID%TYPE := &Enter_Emp_No;
    v_comm EMP.COMM%TYPE;
    NULL_COMMISSION EXCEPTION;
BEGIN
    SELECT COMM INTO v_comm
    FROM EMP
    WHERE EMP_ID = v_empno;

    IF SQL%FOUND THEN
        IF v_comm IS NULL THEN
            RAISE NULL_COMMISSION;
        ELSE
            DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_empno);
            DBMS_OUTPUT.PUT_LINE('Commission: ' || v_comm);
        END IF;
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: Employee ID ' || v_empno || ' does not exist.'
        );

    WHEN NULL_COMMISSION THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: Commission is NULL for Employee ID ' || v_empno
        );
END;
/