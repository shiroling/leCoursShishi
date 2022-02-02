--On inclu les bibliotéques nécésaire à la lecture et à l écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


--lancement du programme
procedure tp2 is

--initialisation de la variable
number: integer;
result: integer:=0 ;
i: integer:= 0;

begin

	--on demandce et obtien l entrée utilisater
	put_line("Donne un nombre !");
	get(number);


	--on boucle pour faiere le somme de tout les entiers de 1 à
	--la valeur entrée par l'utulisateur

	while i < number loop
		result:= result + i;
		i:= i + 1;
	end loop;

	--on donne le résultat
	put_line("le resultat:");
    put(result);  
end tp2;
