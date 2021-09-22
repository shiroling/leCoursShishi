--On inclu les bibliotéques nécésaire à la lecture et à l'écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


--lancement du programme
procedure etoiles is

--déclaration de 3 variables
n: integer;
m: integer;
i: integer;
j: integer;

begin
	--entrée utilisateur
	put_line("donne le nombre d'etoiles: ");
	get(n);
	put_line("donne le nombre de lignes: ");
	get(m);

	i:= 0;
	while i<m and n>0 loop
		put(n);
		put(":");

		j:= 0;
		while j<n loop
			put(" *");
			j:= j+1;
		end loop;
	i:= i+1;
	n:= n - 1;
	new_line;
	end loop;
end etoiles;