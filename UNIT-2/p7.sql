DECLARE
    
    CURSOR c_customers IS
        SELECT customer_id, customer_name, city 
        FROM customer;
        
    r_customer c_customers%ROWTYPE;
BEGIN
    
    OPEN c_customers;
    LOOP
        FETCH c_customers INTO r_customer;
        EXIT WHEN c_customers%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('ID: ' || r_customer.customer_id || 
                             ' | Name: ' || r_customer.customer_name || 
                             ' | City: ' || r_customer.city);
    END LOOP;
    CLOSE c_customers;
    
END;
/