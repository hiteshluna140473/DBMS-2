BEGIN
	FOR rec in (
		SELECT eid,ename,age,basicsal
			FROM emp ORDER BY basicsal
			)
			 
		LOOP
		dbms_output.put_line(
				'Emp no :'|| rec.eid||
				'Name :'|| rec.eName||
				'Job :'|| rec.age||
				'salary :'|| rec.basicsal
				);
			END LOOP;
			END;
			/

