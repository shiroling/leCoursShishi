--On inclu les bibliotéques nécésaire à la lecture et à l'écriture
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


--lancement du programme
procedure pascale is

	function factorielle(nb: in Integer) return Integer is
	i: Integer;
	result: Integer;
	begin
		i:=1;
		result:= 1;
		while i< nb+1 loop
			result:= result * i;
			i:= i+1;

		end loop;
		
		return result;
	end factorielle;


	function binomialCoeff(n: in Integer; p: in Integer) return Integer is
	begin
		return factorielle(n)/ (factorielle(n-p)*factorielle(p));
	end binomialCoeff;
	
	procedure printPascale(h: in Integer) is
	i: Integer;
	j: Integer;
	begin
		i:= 0;
		while i<h loop
			j:= 0;
			while j<i+1 loop
				put(binomialCoeff(i, j)); 
				j:= j+1;
			end loop;
			new_line;
			i:= i+1;
		end loop;
	end printPascale;

--déclaration de 2 variables
begin
	printPascale(6);
	
end pascale;