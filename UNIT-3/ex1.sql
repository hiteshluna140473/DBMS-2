
DECLARE 
	l_code NUMBER;
	r_customer customers%rowtype;

BEGIN

	SELECT * INTO r_customer FROM customers;

EXCEPTION

	WHEN OTHERS THEN
		l_code := SQLCODE;
		dbms_output.put_line('Error code:' || l_code);
		
END;
/