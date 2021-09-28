--On inclu les bibliotéques nécésaire à la lecture et à l'écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


--lancement du programme
procedure etoiles is

--déclaration de 3 variables
n: integer;
i: integer;

begin
	--entrée utilisateur
	put_line("donne le nombre d'etoiles: ");
	get(n);
	put(n);
	put(":");

	i:= 0;
	while i<n loop
		put(" *");
		i:= i+1;
	end loop;


end etoiles;