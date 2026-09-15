SET SERVEROUTPUT ON;

CREATE TABLE number_test (
    id NUMBER,
    num_value VARCHAR2(20)
);

INSERT INTO number_test VALUES (1, '100');
INSERT INTO number_test VALUES (2, 'ABC');

COMMIT;

DECLARE
    v_num NUMBER;
BEGIN
    SELECT TO_NUMBER(num_value)
    INTO v_num
    FROM number_test
    WHERE id = 2;

    DBMS_OUTPUT.PUT_LINE('NUMBER: ' || v_num);

EXCEPTION
    WHEN INVALID_NUMBER THEN
        DBMS_OUTPUT.PUT_LINE(
            'INVALID_NUMBER EXCEPTION: invalid number format.'
        );
END;
/
