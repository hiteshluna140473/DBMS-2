SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_dept IS 
        SELECT DISTINCT department_id 
        FROM employees 
        WHERE department_id IS NOT NULL 
        ORDER BY department_id;

    CURSOR c_emp (p_dept_id NUMBER) IS 
        SELECT employee_id, first_name, salary 
        FROM employees 
        WHERE department_id = p_dept_id;

    total_gross_salary NUMBER := 0;
    gross_salary       NUMBER := 0;

    hra_pct CONSTANT NUMBER := 0.20;
    da_pct  CONSTANT NUMBER := 0.10;

BEGIN
    FOR r_dept IN c_dept LOOP

        DBMS_OUTPUT.PUT_LINE('Department ID: ' || r_dept.department_id);
        total_gross_salary := 0;

        FOR r_emp IN c_emp(r_dept.department_id) LOOP
            gross_salary := r_emp.salary + (r_emp.salary * hra_pct) + (r_emp.salary * da_pct);

            total_gross_salary := total_gross_salary + gross_salary;

            DBMS_OUTPUT.PUT_LINE('  Employee ID: ' || r_emp.employee_id || 
                                 ' | Name: ' || r_emp.first_name || 
                                 ' | Basic Salary: $' || r_emp.salary ||
                                 ' | Indiv. Gross: $' || gross_salary);
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('>> Total Gross Salary for Department ' || r_dept.department_id || ': $' || total_gross_salary);
        DBMS_OUTPUT.PUT_LINE(CHR(10));
    END LOOP;
END;
/