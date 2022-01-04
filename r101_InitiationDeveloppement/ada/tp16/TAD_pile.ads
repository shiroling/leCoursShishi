package TAD_Pile is

	construirePile() return Pile;

	empiler(p: in out Pile, val: in integer) return Pile;
	
	depile(p: in out Pile) return Pile;

	estVide(p: in Pile) return boolean;

	dernier(p: in Pile) return Integer;

	dupliquer(p: in Pile) return Pile;

	-- définition de tableau
	TAILLEMAX: const int:= 50;
	type tab is range 0 .. TAILLEMAX;

	--création du type Pile via 'record'
	type Pile is record
	   val : tab;
	   nbVls : Integer range 0 .. 50;
	end record;






end TAD_Pile;