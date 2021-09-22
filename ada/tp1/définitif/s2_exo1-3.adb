--On inclu les bibliotéques nécésaire à la lecture et à l écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

--lancement du programme
procedure s2_exo1-2 is

--initialisation de variables
number: integer;

begin
	--on demande et obtien l entrée utilisater
	put("Donne un nombre entre 1 et 3 inclu");
	get(number);

	--boucle qui test l entrée utilisateur et redemende unnombre 
	--si l'entrée n'est pas entre 1 et 3 inlus 
	while number > 3 and number < 1 loop
		put("Donne un nombre entre 1 et 3 inclu");
		get(number);
	end loop;
	put("merci pour ton nombre");
      
end s2_exo1-2;
