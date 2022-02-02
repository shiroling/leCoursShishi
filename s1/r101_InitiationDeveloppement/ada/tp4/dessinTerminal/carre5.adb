--On inclu les bibliotéques nécésaire à la lecture et à l'écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


--lancement du programme
procedure carre5 is
	
	procedure printCharLine(c: in Character; nb: in Integer) is
	i: Integer;

	begin
		i:=0;
		while i<nb loop
			put(c);
			i:= i+1;
		end loop;
		new_line;
	end printCharLine;

	procedure carreT(c: in Character; nb: in Integer) is
	i: Integer;
	j: Integer;
	begin
		printCharLine(c, nb);
		j:=2;
		while j<nb loop
			i:=0;
			while i<nb loop
				if(i=0 or i=nb-1) then
					put(c);
				else
					put(' ');
				end if;
				i:= i+1;
			end loop;
			j:= j+1;
			new_line;
		end loop;
		printCharLine(c, nb);

	end carreT;

--déclaration de 3 variables
n: integer:= 5;
c: Character:= '*';
begin
	
	carreT(c, n);

end carre5;