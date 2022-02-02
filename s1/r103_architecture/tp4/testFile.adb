with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure testFile is

	mise: float;
	money: float;

	begin
	mise:= 50.12;
	money:= mise;


	for i in 1..20 loop
		put("year: "); put(i); new_line;
		money:= (money * 11.0) - (mise * 10.0);

		put("state: "); Put(money, 5, 3, 0); new_line;

 	end loop;

end testFile;