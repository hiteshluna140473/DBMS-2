DECLARE

    NO_DEPT_FOUND EXCEPTION;

    CURSOR emp_cursor IS
        SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO
        FROM EMP
        WHERE DEPTNO = &DEPT_NO;

    v_count NUMBER := 0;

BEGIN

    FOR emp_rec IN emp_cursor
    LOOP

        INSERT INTO EMP_BACKUP
        VALUES (
            emp_rec.EMPNO,
            emp_rec.ENAME,
            emp_rec.JOB,
            emp_rec.MGR,
            emp_rec.HIREDATE,
            emp_rec.SAL,
            emp_rec.COMM,
            emp_rec.DEPTNO
        );

        v_count := v_count + 1;

    END LOOP;

    IF v_count = 0 THEN
        RAISE NO_DEPT_FOUND;
    END IF;


    DBMS_OUTPUT.PUT_LINE(
        v_count || ' employee records inserted into EMP_BACKUP.'
    );

EXCEPTION

    WHEN NO_DEPT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE(
            'NO_DEPT_FOUND: No employees found for entered DEPT_NO.'
        );

END;
/