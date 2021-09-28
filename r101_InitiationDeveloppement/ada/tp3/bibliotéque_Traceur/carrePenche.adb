
with Traceur; use Traceur;

procedure carrePenche  is
    i: Integer;

    -- placer le stylet au centre et vers le nord
    procedure setup is
    begin
        initialiserTraceur;
        leverStylet;
        centrerStylet;
        orienterNord; 
    end setup;

    --procédure inverse de "pivoterGauche"
    procedure pivoterDroite is
    i: Integer;
    begin
        i:= 0;
        while i < 3 loop
            pivoterGauche;
            i:= i+1;
        end loop;
    end pivoterDroite;

    --permet de déplacer le stylet d'une distance donné
    procedure goFwd(length : in Integer) is
    i : Integer;
    begin
        i :=0; 
        while i < length loop
            deplacerStylet;
            i:= i+1;
        end loop;
    end goFwd;

    --permet de tracer des traits de longueure donné
    procedure trait(length : in Integer) is
    begin
        baisserStylet;
        goFwd(length);
        leverStylet;
    end trait;

    --procédure pas belle pour tracer des diagonales à la main en faisant le tour de chaque pixel
    --PS: ne pas dépasser 99 en argument sinon il y a des "TRACEUR.DEBORDEMENTNORD" 
    --et ça c'est pas cool...
    procedure diagonale(length: in Integer)is
    i: Integer;
    begin
        i:=0;
        while i <length loop
            trait(1);
            pivoterDroite;
            trait(1);
            pivoterGauche;
            i:= i+1;
        end loop;
    end diagonale;


begin
    -- placer le stylet au centre et vers le nord
    setup;

    -- placer le stylet dans le coin suppérieur puis s'orienter.
    goFwd(100);
    pivoterGauche;

    -- tracer la figure, une diagonale puis on tourne à gauche et ce 4 fois.
    i:= 0;
    while i<4 loop
        diagonale(100);
        pivoterDroite;
        i:= i+1;
    end loop;
    
    
    -- revenir au centre sans tracer
        leverStylet;
        centrerStylet;
   
    -- afficher le dessin
        afficherTraceur;
end carrePenche;

