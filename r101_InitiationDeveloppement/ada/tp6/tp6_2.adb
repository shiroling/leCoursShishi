with ada.integer_text_io;use ada.integer_text_io;
with ada.text_io;use ada.text_io;

procedure tp6_2 is

	NbCoefs: constant integer:= 100;
	type TabInteger is array (0 .. NbCoefs-1) of integer;

	type polynome is record
		coefficients : TabInteger;
		degre : integer;
	end record;

	marqueurFin:integer;
	i:integer;
	P:polynome;
	lastEntry: integer;
begin

	put("Que voulez-vous comme marqueur de fin ? ");
	get(marqueurFin);
	P.degre:=-1;
	lastEntry:=0000;
	i:=0;
	while i<NbCoefs and lastEntry/=marqueurFin loop
		get(P.coefficients(i));
		lastEntry:= P.coefficients(i);
		i:=i+1;
		P.degre:=P.degre+1;
	end loop;
	P.coefficients:=(others => 0);

	put("Le degré du polynome est"); put(P.degre);

end tp6_2;