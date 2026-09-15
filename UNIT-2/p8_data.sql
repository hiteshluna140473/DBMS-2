CREATE TABLE sample_employees (
    e_id NUMBER PRIMARY KEY,
    e_name VARCHAR2(50),
	age number(10),
    basicsal number(10)
);

INSERT INTO sample_employees VALUES (1, 'Hitesh',18,55000);
INSERT INTO sample_employees VALUES (2, 'Biplab',23,65000);
INSERT INTO sample_employees VALUES (3, 'Alexa',19,35000);
INSERT INTO sample_employees VALUES (4, 'nick',34,50000);
INSERT INTO sample_employees VALUES (5, 'Ronak',20,45000);
COMMIT;