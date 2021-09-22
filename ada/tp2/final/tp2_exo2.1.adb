--On inclu les bibliotéques nécésaire à la lecture et à l'écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


--lancement du programme
procedure stana is

--déclaration de 3 variables
n: integer:= 4;
i: integer;
c: integer;
begin
	
	i:= 0;
	while i<n loop
	i:= i+1;

		c:=0;
		while c<i loop
		put("+ ");
		c:=c+1;
		end loop;
	new_line;
	end loop;

end stana;