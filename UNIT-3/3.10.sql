DECLARE
   	v_num NUMBER;
   	v_code NUMBER;
   	v_errm VARCHAR2(255);
BEGIN
   	v_num := 100 / 0;
EXCEPTION
   	WHEN OTHERS THEN
      		v_code := SQLCODE;
      		v_errm := SQLERRM;
      		DBMS_OUTPUT.PUT_LINE('Error Code: ' || v_code);
      		DBMS_OUTPUT.PUT_LINE('Error Message: ' || v_errm);
END;
/