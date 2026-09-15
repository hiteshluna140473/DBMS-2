SET SERVEROUTPUT ON ;

DECLARE 
	rno RESULT.ROLLNO%TYPE;
	S1 RESULT.SUB1%TYPE;
	S2 RESULT.SUB2%TYPE;
	S3 RESULT.SUB3%TYPE;
	S4 RESULT.SUB4%TYPE;
	S5 RESULT.SUB5%TYPE;
	total NUMBER(10);
	PER NUMBER(5,2);
	GRD CHAR(1);
BEGIN 
	RNO := &rollno;
	select sub1,sub2,sub3,sub4,sub5
	into s1 ,s2, s3, s4, s5
	from RESULT
	WHERE rollno  = rno;

	total:=s1+s2+s3+s4+s5;
	per := total/5;

	IF PER >= 80 THEN
		GRD := 'A';
	ELSIF PER >= 60 THEN
		GRD := 'B';


	ELSIF PER >= 50 THEN
		GRD := 'C';


	ELSIF PER >= 35 THEN
		GRD := 'D';

	ELSE 
		GRD := 'F';

	END IF;
	UPDATE RESULT 
	SET TOTAL =  total,
	        per = per ,
	        grade = GRD
	WHERE rollno = rno;

	COMMIT;

	DBMS_OUTPUT.PUT_LINE('roll no :'|| rno );
	DBMS_OUTPUT.PUT_LINE('TOTAL MARKS:'|| total);
	DBMS_OUTPUT.PUT_LINE('PERCENTAGE :'|| PER || '%' );
	DBMS_OUTPUT.PUT_LINE('GRADE :'|| GRD );

EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('ROLL  NUMBER NOT FOUND');
END;
/