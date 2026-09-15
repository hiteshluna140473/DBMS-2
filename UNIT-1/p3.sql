DECLARE
	pro_name varchar2(50);
	qty number;
	price number;
	discount_per number;
	total_amt number;
	discount_amt number;
	net_amt number;

BEGIN
	--accept input from user
	pro_name:='&pro_name';
	qty:=&quantity;
	price:=&price_per_unit;
	discount_per:=&discount_percentage;

	total_amt:=qty*price;
	discount_amt:=(total_amt*discount_per)/100;
	net_amt:=total_amt-discount_amt;
	
	dbms_output.put_line('product_name:' ||pro_name);
	dbms_output.put_line('Quantity:' ||qty);
	dbms_output.put_line('price per unit:' ||price);
	dbms_output.put_line('Total amount:' ||total_amt);
	dbms_output.put_line('discount_amount:' ||discount_amt);
	dbms_output.put_line('net_amount:' ||net_amt);

END;
/