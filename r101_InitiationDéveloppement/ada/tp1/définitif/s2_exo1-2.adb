--On inclu les bibliotéques nécésaire à la lecture et à l écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


--lancement du programme
procedure s1_exo1-2 is

--déclaration de 'a' variables
a: integer:= 2;

begin

--boucle avec condition d arrét si A est suppérieur ou éggal à 17
	while a < 17 loop

		--arithmérique où on ajoute à 'a' le valeure courante de 'a' + 3
		a:= a+3;

	end loop; 
end s1_exo1-2;