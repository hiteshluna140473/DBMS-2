CREATE TABLE Exam  (
	Rollno NUMBER PRIMARY KEY,
	Name VARCHAR2(50),
	Sub1 NUMBER (3),
	Sub2 NUMBER (3),
	Sub3 NUMBER (3),	
	Sub4 NUMBER (3),
	Sub5 NUMBER (3),
	Total NUMBER (4),
	Per NUMBER (5,2),
	Grade CHAR(1)
);

INSERT INTO Exam
(Rollno,Name,Sub1,Sub2,Sub3,Sub4,Sub5)VALUES
(101,'rahul',85,78,90,88,76);

INSERT INTO Exam
(Rollno,Name,Sub1,Sub2,Sub3,Sub4,Sub5)VALUES
(102,'hitesh',50,89,70,68,86);