with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;



procedure tp2 is

number: integer:= 0;

begin
	put("Donne un nombre entre 10 et 20 inclu");
	new_line;
	get(number);
	while number > 20 or number < 10 loop
	if number > 20 then
		put_line("Plus petit!");
	else
		put_line("Plus grand!");
	end if;
		get(number);
	end loop;
	put("merci pour ton nombre");
      
end tp2;
