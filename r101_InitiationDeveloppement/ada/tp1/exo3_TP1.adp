--inclusion des bibliotéques
with ada.text_io;use ada.text_io;
with ada.integer_text_io;use ada.integer_text_io;

--déclaration de la procédure
procedure hello is 


note: integer;


--début
begin

	put("Saisis ta note: ");
    get(note);
    

    if note >= 16 then
    	put("Mention: Trés bien");
    else
    	if note >= 14 then
            put("Mention: bien");
        else
            if note >=12 then
                put("Mention assez bien");
            else
                if note >=10 then
                    put("Passable");
                else
                    if note >= 0 then
                        put("Insufisant");
                    end if;
                end if;
            end if;
        end if;
   	end if;

--fin
end hello;