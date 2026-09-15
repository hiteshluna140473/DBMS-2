DECLARE
    p NUMBER(10, 2);
    r NUMBER(5, 2);
    t NUMBER(5, 2);
    si NUMBER(10, 2);
BEGIN
    p:= &Enter_Principal_Amount;
    r:= &Enter_Annual_Rate_of_Interest;
    t:= &Enter_Time_Period_In_Years;

    si:= (p * r * t) / 100;

    DBMS_OUTPUT.PUT_LINE('Principal Amount : ' || p);
    DBMS_OUTPUT.PUT_LINE('Interest Rate (%): ' || r);
    DBMS_OUTPUT.PUT_LINE('Time (in Years)  : ' || t);
    DBMS_OUTPUT.PUT_LINE('Calculated Simple Interest = ' || si);
    DBMS_OUTPUT.PUT_LINE('Total Payable Amount       = ' || (p + si));
END;
/