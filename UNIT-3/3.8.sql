DECLARE
   	v_total_sales NUMBER := 10000;
   	v_total_items NUMBER := 0;
   	v_avg_sale NUMBER;
BEGIN
   	v_avg_sale := v_total_sales / v_total_items;
   	DBMS_OUTPUT.PUT_LINE('Average Sale: ' || v_avg_sale);
EXCEPTION
   	WHEN ZERO_DIVIDE THEN
      		DBMS_OUTPUT.PUT_LINE('Error: Attempted division by zero.');
END;
/