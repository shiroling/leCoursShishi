
with Traceur; use Traceur;

procedure trait  is
   c1 : Integer; -- compteur pour le nb d'unités du trait déjà tracées

begin
	-- initialise le traceur
		initialiserTraceur;
	
	-- se positionner au centre sans tracer
		leverStylet;
		centrerStylet;
		baisserStylet;

	-- orienter le stylet vers le nord
		orienterNord;	
		
	-- tracer le trait
		C1:= 0;
		while C1 < 100 loop
			deplacerStylet;		
			C1:= C1 + 1;
		end loop;
	
	-- revenir au centre sans tracer
		leverStylet;
		centrerStylet;
   
    -- affiche le dessin
		afficherTraceur;
end trait;

