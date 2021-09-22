with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;



procedure tp2 is

number: integer;
result: integer:=0 ;
i: integer:= 0;

begin
	put_line("Donne un nombre !");
	
	get(number);
	while i < number loop
		result:= result + i;
		i:= i + 1;
	end loop;
	put_line("le resultat:");
    put(result);  
end tp2;
