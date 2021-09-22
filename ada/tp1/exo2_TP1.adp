--inclusion des bibliotéques
with ada.text_io;use ada.text_io;
with ada.integer_text_io;use ada.integer_text_io;

--déclaration de la procédure
procedure hello is 

nbCalendrier: integer;
prix : integer := 0;
--début
begin

	--afficher "Hello" en sortie standrard
	put("tu veux imprimer cb de calendriers ? : ");
    get(nbCalendrier);
    if nbCalendrier < 75 then
    	prix := nbCalendrier;
    else
    	prix := nbCalendrier + 10;
   	end if;

   	prix:= prix + 4;
   	new_line;
   	put(prix);

--fin
end hello;
