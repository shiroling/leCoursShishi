with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure fileTest is


	function harmo(idebut : in integer; ifin : in integer) 
					return float is
		result: float:= 0.0;
		begin
			for i in idebut..ifin loop
				result:= result + (1.0 /  float(i));
				put(i); Put(result); put_line("oui");
		 	end loop;
			return result;
		end harmo;


	begin
	put(harmo(10**3, 10**2));
end fileTest;