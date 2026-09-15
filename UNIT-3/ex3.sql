SET SERVEROUTPUT ON

DECLARE

	res NUMBER (3);
	n NUMBER(3);
BEGIN

	n:=&n;
	IF n=0 THEN
		RAISE_APPLICATION_ERROR(-20230,'You can not divide any number with zero');
	ELSE
		SELECT 100/n INTO N FROM DUAL;
			DBMS_OUTPUT.PUT_LINE(res);
	END IF;
END;
/