BEGIN
	GOTO second_mes; <<First_mes>>
	DBMS_OUTPUT.PUT_LINE ('hello');

	GOTO The_end;
	<<second_mes>>
	
	DBMS_OUTPUT.PUT_LINE ('PL-SQL GOTO DEMO');
	GOTO First_mes;
	
	<<The_end>>

	DBMS_OUTPUT.PUT_LINE ('AND GOOD BYE..');

END;
/

