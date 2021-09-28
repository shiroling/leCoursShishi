with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;



procedure tp2 is

number: integer;

begin
	put("Donne un nombre entre 1 et 3 inclu");
	get(number);
	while number > 3 and number < 1 loop
		put("Donne un nombre entre 1 et 3 inclu");
		get(number);
	end loop;
	put("merci pour ton nombre");
      
end tp2;
