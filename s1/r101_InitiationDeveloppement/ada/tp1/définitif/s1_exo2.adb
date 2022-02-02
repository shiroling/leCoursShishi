--inclusion des bibliotéques
with ada.text_io;use ada.text_io;
with ada.integer_text_io;use ada.integer_text_io;

--déclaration de la procédure
procedure calendriers is 

--initialisation de variables
nbCalendrier: integer;
prix : integer := 0;

begin

	--afficher en sortie standrard puis on obtiens le nombre de calendriers commandées
	put("tu veux imprimer cb de calendriers ? : ");
    get(nbCalendrier);

    --on cherche a savoir si il a plsu ou moins de 75 calendriers commandées
    if nbCalendrier < 75 then
        - - Appliquer le tarif à 1e
    	prix := nbCalendrier;
    else
        -- Appliquer le tarif à -10e
    	prix := nbCalendrier - 10 + 3;
   	end if;

    --on ajourte le prix d'envoi qui lui est fixe
   	prix:= prix + 4;

    --on affiche le prix
   	new_line;
   	put(prix);

end calendriers;
