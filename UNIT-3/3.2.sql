CREATE TABLE RESULT (
	student_name VARCHAR2(50),
	marks NUMBER,
	status VARCHAR2(20)
);

INSERT INTO RESULT VALUES ('Alice', 85, 'PASS');
INSERT INTO RESULT VALUES ('Bob', 92, 'PASS');
COMMIT;

DECLARE
	v_name RESULT.student_name%TYPE := '&Enter_Student_Name';
	v_status RESULT.status%TYPE;
   	v_marks RESULT.marks%TYPE;
BEGIN
   	SELECT status, marks INTO v_status, v_marks
   	FROM RESULT
   	WHERE LOWER(student_name) = LOWER(v_name);

   	DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_name);
   	DBMS_OUTPUT.PUT_LINE('Marks: ' || v_marks);
   	DBMS_OUTPUT.PUT_LINE('Result: ' || v_status);
EXCEPTION
   	WHEN NO_DATA_FOUND THEN
      		DBMS_OUTPUT.PUT_LINE('Error: Student record not found.');
   	WHEN TOO_MANY_ROWS THEN
      		DBMS_OUTPUT.PUT_LINE('Error: Multiple student records found.');
END;
/