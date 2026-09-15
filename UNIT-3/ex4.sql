set serveroutput on

declare

	a number:=&a;
	b number:=&b;
	c number;
	myexp1 EXCEPTION;

PRAGMA
	EXCEPTION_INIT(myexp1, -2000);
begin
	if b=0 then
		RAISE myexp1;
	else
		c:=a/b;
		dbms_output.put_line('ans='||c);

	end if;
exception
	when myexp1 THEN

		dbms_output.put_line('cant divide no with o');
end;
/