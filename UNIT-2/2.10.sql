SET SERVEROUTPUT ON;

DECLARE
    total_rows NUMBER(2):=0;
BEGIN
    UPDATE emp 
    SET basicsal = basicsal + 500;


    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('no employee selected');

    ELSIF SQL%FOUND THEN
		total_rows:=SQL%rowcount;
		DBMS_OUTPUT.PUT_LINE(total_rows || 'employees salary updated');

    END IF;

END;
/

