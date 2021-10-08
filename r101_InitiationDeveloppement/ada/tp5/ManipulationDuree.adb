with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;

procedure manipulationDuree is

	type Duree is record
		hrs: Integer;
		min: Integer;
		sec: Integer;
	end record;

    function lireDuree return Duree is
    t: Duree;
    begin
        put("donne des heure: ");
        get(t.hrs);

        put("donne des minutes: ");
        get(t.min);
        
        put("donne des secondes: ");
        get(t.sec);
        return t;
    end lireDuree;

    procedure printDuree(t: in Duree) is 
    begin
        put(t.hrs); put("h");
        put(t.min); put("min ");
        put(t.sec); put("s");
    end printDuree;

    function decompos(time: in Integer) return Duree is 
    t: Duree;
    begin
        t.hrs:= time/ 3600;
        t.min:= time/60 - t.hrs*60;
        t.sec:= time- (t.hrs*3600)- (t.min*60);
        return t;
    end decompos;

    function transform(t: in Duree) return Integer is
    begin
        return(t.hrs*3600+t.min*60+t.sec);
    end transform;

    function sommeDuree(t1: in Duree; t2: in Duree)return Duree is 
    begin
        return decompos(transform(t1)+transform(t2));
    end sommeDuree;

    time: Duree;

begin
    
    time:= lireDuree;
    printDuree(time);
    put(transform(time));
    printDuree(sommeDuree(time, lireDuree));
    
end manipulationDuree;
