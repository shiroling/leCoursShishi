--inclusion des bibliotéques
with ada.text_io;use ada.text_io;
with ada.integer_text_io;use ada.integer_text_io;

--déclaration de la procédure
procedure exo1_TP2 is 

a: integer:= 2;
i: integer:= 1;
c: integer;



--début
begin

    while i <= 5 loop
        c := a;
        a := c + 3;
        i := i + 1;
        put(i); put("  ");
        put(a); put("  ");
        put(c); put("  ");
        new_line;
    end loop;
    

--fin
end exo1_TP2;