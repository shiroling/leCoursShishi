--On inclu les bibliotéques nécésaire à la lecture et à l écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


--lancement du programme
procedure s2_exo1-4 is

--initialisation de la variable
number: integer:= 0;

begin

	--on demandce et obtien l entrée utilisater
	put("Donne un nombre entre 10 et 20 inclu");
	new_line;
	get(number);


	--boucle qui test l entrée utilisateur et redemende unnombre 
	while number > 20 or number < 10 loop

	--si le condition rend False, une série de if pour indiquer a 
	--l utilisateur si le nombre à chercher dois étre plus grand ou plus petit
	if number > 20 then
		put_line("Plus petit!");
	else
		put_line("Plus grand!");
	end if;
		get(number);
	end loop;
	put("merci pour ton nombre");
      
end s2_exo1-4;
