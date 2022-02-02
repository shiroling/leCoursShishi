--On inclu les bibliotéques nécésaire à la lecture et à l'écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


--lancement du programme
procedure s1_exo1-1 is

--déclaration de 3 variables
a: integer:= 2;
i: integer:= 1;
c: integer;

begin

--boucle avec condition d'arrét si A est suppérieur ou éggal à 17
	while i <= 5 loop
		-- valeur courante de 'a' dans 'c'
		c:= a;
		--arithmérique ou on ajoute à 'a' le valeure courante de 'a' + 3
		a:= c+3;
		--valeur cournate de 'i' + 1 dans i
		i:= i+1;

	end loop; 
end s1_exo1-1;