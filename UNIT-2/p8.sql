DECLARE
    CURSOR emp_cursor IS
        SELECT e_id, e_name, age, basicsal 
        FROM sample_employees 
        WHERE e_name LIKE 'Al%';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employees starting with "Al":');
    
    FOR emp_rec IN emp_cursor LOOP
        DBMS_OUTPUT.PUT_LINE('ID: ' || emp_rec.e_id || 
                             ' | Name: ' || emp_rec.e_name ||
							 ' |age  : ' || emp_rec.age||
                             ' | Dept: ' || emp_rec.basicsal);
    END LOOP;
    
END;
/