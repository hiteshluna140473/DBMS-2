set serveroutput on

declare
	a number:=&a;
	b number:=&b;
	c number;

begin
	c:=a/b;
exception

	when ZERO_DIVIDE THEN

		dbms_output.put_line('cant divide no with o'||sqlerrm);
End;
/