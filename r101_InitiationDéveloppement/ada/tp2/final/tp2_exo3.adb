--On inclu les bibliotéques nécésaire à la lecture et à l'écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


--lancement du programme
procedure pgcd is

--déclaration de 3 variables
n: integer;
m: integer;
r: integer;

begin
	--entrée utilisateur
	put("donne les deux nombres: ");
	get(n); 	put("et :");
	get(m);

	r:= n mod m;
	while r/= 0 loop
		n:= m;
		m:= r;
		r:= n mod m;
	end loop;
	put(m);

end pgcd;