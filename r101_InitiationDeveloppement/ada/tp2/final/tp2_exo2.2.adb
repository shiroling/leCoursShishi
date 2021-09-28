--On inclu les bibliotéques nécésaire à la lecture et à l'écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


--lancement du programme
procedure stana is

--déclaration de 3 variables
n: integer;
i: integer;
c: integer;

begin
	put_line("donne le nombre de lignes:");
	get(n);

	i:= 0;
	while i<n loop
	i:= i+1;

		c:=i;
		while c<n loop
			put(" ");
			c:= c + 1;
		end loop;
		
		c:=0;
		while c<i loop
			put("+ ");
			c:=c+1;
		end loop;
	
	new_line;
	end loop;
end stana;