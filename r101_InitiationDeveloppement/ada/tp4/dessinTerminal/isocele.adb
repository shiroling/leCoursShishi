--On inclu les bibliotéques nécésaire à la lecture et à l'écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


--lancement du programme
procedure isocele is
	
	procedure printCharLine(c: in Character; nb: in Integer) is
	i: Integer;

	begin
		i:=0;
		while i<nb loop
			put(c);
			i:= i+1;
		end loop;
	end printCharLine;

    procedure printSpaceCharLine(c: in Character; nb: in Integer) is
	i: Integer;

	begin
		i:=0;
		while i<nb loop
			put(c);
            put(' ');
			i:= i+1;
		end loop;
	end printSpaceCharLine;

	procedure printIsocele(c: in Character; nb: in Integer) is
	i: Integer;
	stars: Integer;
	begin
		i:=0;
		stars:= 1;
		while stars<=nb loop
			printCharLine(' ', nb-i);
			printCharLine('*', stars);
            new_line;
            i:=i+1;
            stars:= stars +2;
		end loop;
	end printIsocele;

--déclaration de 2 variables
n: integer:= 12;
c: Character:= '*';
begin
	
	printIsocele(c, n);

end isocele;