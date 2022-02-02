with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;



procedure tp2 is

a: integer:= 2;
i: integer:= 1;
c: integer;

begin
   
	while a < 17 loop
		a:= a+3;
		put("--3"); put("   ");
		put(a);
		new_line;
	end loop;
   
      
end tp2;
