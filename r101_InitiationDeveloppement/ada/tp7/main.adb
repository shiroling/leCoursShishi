with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;

procedure main is
    MAX_LENGTH : constant Integer := 25;
	type TabEntiers is array (0 .. MAX_LENGTH-1) of Integer;

	-- Definition du type Tableau_T
	type Tableau_T is record

		tab        : TabEntiers;
		nbElements : Integer;
	end record;

	-- Sous-programme permettant d'afficher le tableau tab contenu dans l'enregistrement
	procedure afficherTableau(t : in Tableau_T) is
		i : Integer;
		begin
			i := 0;
			while i <= t.nbElements-1 loop
				Put (t.tab (i));
				i := i + 1;
			end loop;
		end afficherTableau;
	
	procedure insererValeur(v: in Integer; seek: in Integer; t :in out Tableau_T) is
		temp1: Integer:= t.tab(seek);
		temp2, i: Integer;
		
		begin
			t.tab(seek):= v;
			i:=	seek+1;
			while i < t.nbElements+1 loop
				temp2:= t.tab(i);
				t.tab(i):= temp1;
				temp1:= temp2;
				i:=i+1;
			end loop;
			t.nbElements:=t.nbElements+1;
		end insererValeur;


	function maximum (t : in Tableau_T) return Integer is
		i: Integer;
		temp: Integer :=0;
		begin
			i:=1;
			temp:= t.tab(0);
			while i <t.nbElements loop
				if temp< t.tab(i) then 
					temp:= t.tab(i);
				end if;
				
				i:= i+1;
			end loop;
			return temp;
		end maximum;

	function compterOccurences (number: in Integer; t : in Tableau_T) return Integer is
		i: Integer;
		temp: Integer := 0;
		begin
			i:=0;
			while i <t.nbElements loop
				if t.tab(i) = number then
					temp:= temp +1;
				end if;
				i:= i+1;
			end loop;
			return temp;
		end compterOccurences;

	function elementPlusFrequent (t : in Tableau_T) return Integer is
		i, max, occurences, temp: Integer;
		begin
			i:=0; occurences:=0;
			while i< t.nbElements loop
				occurences:= compterOccurences(t.tab(i), t);
				if occurences> temp then
					temp:= occurences;
					max:= t.tab(i);

				end if;
				i:= i+1;
			end loop;
			return max;
		end elementPlusFrequent;

	function isInto(nb: in Integer; t: in Tableau_T)return Integer is
		i, isIn: Integer;
		begin
			i:=0; isIn:=0;
			while i< t.nbElements loop
				if t.tab(i) = nb then
					isIn:= 1;
					i:=t.nbElements;
				end if;
				i:= i+1;
			end loop;
			return isIn;
		end isInto;

	function valeursUniques (t: in Tableau_T) return Tableau_T is
		i, j: Integer;
		tob: Tableau_T;
		begin
			tob.nbElements:= 0;

			i:=0; j:=0;
			while i < t.nbElements loop
				if 0 = isInto(t.tab(i), tob) then
					tob.tab(j):= t.tab(i);
					j:= j+1;
					tob.nbElements:= tob.nbElements+1;
					put_line("charged a value");
				end if;
				i:= i+1;
			end loop;
		return tob;
		end valeursUniques;

	function schtroumpf (t1: in Tableau_T; t2: in Tableau_T) return Integer is
		i: Integer; --compteur tab 1.
		j: Integer; --compteur tab 2.
		result: Integer := 0; -- le résultat qui sera retourné.
		begin
			i:=0;
			while i < t1.nbElements loop
				j:= 0;
				while j < t2.nbElements loop
					result:= result + t1.tab(i)*t2.tab(j);
					put(t1.tab(i)); put(t2.tab(j)); new_line;   --DEBUG
					j:= j+1;
				end loop;
				i:= i+1;
			end loop;
			return result;
		end schtroumpf;

	function sommeIntervalle (t : Tableau_T; iBegin: Integer; iEnd: Integer) return Integer is
		i: Integer; --compteur
		result: Integer; --le résultat
		
		begin
			result:= 0;

			i:= iBegin;
			while i <= iEnd and i < t.nbElements loop
				result:= result + t.tab(i);
				put(t.tab(i)); put(result); new_line; 		--DEBUG
				i:=i+1;
			end loop;

			return result;
		end sommeIntervalle;


	enrT1 : Tableau_T;

begin

	enrT1.tab := (5, 5, 4, 45, 2, 5, 1, others => 0);
	enrT1.nbElements:=7;

	put(sommeIntervalle(enrT1, 1, 3));

end main;