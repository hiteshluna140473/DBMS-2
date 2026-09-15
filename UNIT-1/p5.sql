DECLARE
	n number;
	i number;

BEGIN
	n:=&n;

	FOR i IN 1..n LOOP
		DBMS_OUTPUT.PUT_LINE(i);
	
	END LOOP;
	
END;
/