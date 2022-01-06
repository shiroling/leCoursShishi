with Ada.Text_IO; use Ada.Text_IO;

package body TAD_Pile is
	
	construirePile() return Pile is
		p: Pile;
		Begin
			p.nbVal := 0;
			return p;
		end construirePile;


	empiler(p: in out Pile, val: in integer) return Pile;
		Begin
			if p.nbVal=50 then
				raise PILE_PLEINE;
			end if;

			p.nbVal := p.nbVal + 1;
			p.tab[nbVal] := val;

			return p;
		end empiler;


	depile(p: in out Pile) return Pile is
	begin
		return p;
	end depile;

	estVide(p: in Pile) return boolean is
	begin
		if p.nbVal = 0 then
			return 1;
		else
			return 0;
		end if;
	end

	dernier(p: in Pile) return Integer;

	dupliquer(p: in Pile) return Pile;
	


















end TAD_Pile;