
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;



procedure tp2 is
	
	type Enr is record
		c1: integer;
		c2: integer;
		c3: integer;
		c4: integer;
	end record;

	number: integer;
	co: Enr;

	procedure lireCode(code: out Enr) is
	begin
		put_line("code #1: ");
		get(code.c1);
		put_line("code #2: ");
		get(code.c2);
		put_line("code #3: ");
		get(code.c3);
		put_line("code #4: ");
		get(code.c4);

	end lireCode;

	procedure getcode (co: out Enr) is
	begin
	put_line("Entrez un code d’identification de quatre chiffres : ");
	
	get(number);
	co.c1:= number /1000;
	co.c2:= number /100 - co.c1*10;
	co.c3:= number /10 - co.c1*100 - co.c2*10;
	co.c4:= number mod(10);
	end getcode;

	function verifCode (nb: in Enr) return integer is
	begin
	if ((nb.c1+nb.c2+nb.c3)mod(7) = nb.c4) then
		put("c valide");
		return 1;
	else
		put("c pas bon");
		return 0;
	end if;
	end verifCode;

begin
	co:=lireCode();
	put(verifCode(co));

end tp2;
