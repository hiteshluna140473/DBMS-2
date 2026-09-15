DECLARE
    num    NUMBER;
    square NUMBER;
    cube   NUMBER;
BEGIN
    num := &enter_a_number;

    square := num * num;
    cube   := num * num * num;

    DBMS_OUTPUT.PUT_LINE('Original Number : ' || num);
    DBMS_OUTPUT.PUT_LINE('Square Value    : ' || square);
    DBMS_OUTPUT.PUT_LINE('Cube Value      : ' || cube);
END;
/