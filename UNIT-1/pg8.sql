SET SERVEROUTPUT ON;

DECLARE 
    ID      EMP.ETD%TYPE;
    NAME    EMP.ENAME%TYPE;
    BS      EMP.BASICSAL%TYPE;
    DA      NUMBER(10,2);
    HRA     NUMBER(10,2);
    MEDICAL NUMBER(10,2);
    PF      NUMBER(10,2);
    GS      NUMBER(20,2);
    
BEGIN
    ID := &ID;
    
    SELECT ETD, ENAME, BASICSAL
    INTO ID, NAME, BS
    FROM EMP
    WHERE ETD = ID;
    
    DA      := (BS * 50) / 100;
    HRA     := (BS * 15) / 100;
    MEDICAL := 500;
    PF      := (BS * 10) / 100;
    GS      := BS + (DA + HRA + MEDICAL) - PF;
    
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || NAME);
    DBMS_OUTPUT.PUT_LINE('GROSS SALARY : ' || GS);
    
EXCEPTION    
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('EID NOT FOUND');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
