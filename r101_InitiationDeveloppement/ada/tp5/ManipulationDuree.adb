with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;

-- Programme principal
procedure manipulationDuree is

	type duree is record
		h: Integer;
		m: Integer;
		s: Integer;
	end record;

	function lireDuree return duree is
	t: duree;
	
	begin
		put("Combiens d'heures il y a t'il à ta montre? :");
		get(t.h);
		put("Combiens de minutes il y a t'il à ta montre? :");
		get(t.m);
		put("Combiens de secondes montre ta trotteuse? :");
		get(t.s);
		return t;
	end lireDuree;

	procedure printDuree(t: in duree) is
	begin
		put(t.h);	put("h");
		put(t.m);	put("m");
		put(t.s);	put("s");
		new_line;
	end printDuree;

	function transform(t: in duree) return Integer is
	begin
		return (t.s + t.m*60 + t.h*3600);
	end transform;

	function decompos(sec: in Integer) return duree is
	t: duree;
	begin
		t.h:= sec/3600;
		t.m:= sec/60-t.h*60;
		t.s:= sec mod(60);
	return(t);
	end decompos;

	function sommeDuree(t1: in duree; t2: in duree) return duree is
	begin
	
	return decompos(transform(t1)+ transform(t2));
	end sommeDuree;

	time1: duree;
	time2: duree;
begin
	time1:= lireDuree;
	time2:= lireDuree;

	time1:= sommeDuree(time1, time2);
	printDuree(time1);
end manipulationDuree;