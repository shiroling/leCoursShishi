
with Traceur; use Traceur;

procedure pleinscarre  is

    -- placer le stylet au centre et vers le nord
    procedure setup is
    begin
        initialiserTraceur;
        leverStylet;
        centrerStylet;
        orienterNord; 
        baisserStylet;
    end setup;

    procedure trait(length : in Integer) is
    c1 : Integer; -- compteur
    begin
        C1:= 0;
        while C1 < length loop
            deplacerStylet;     
            C1:= C1 + 1;
        end loop;
    end trait;

    procedure carre(length : in Integer) is
    c1 : Integer; -- compteur
    begin
        C1:= 0;
        while C1 < 4 loop
            trait(length);
            pivoterGauche;
            C1:= C1 + 1;
        end loop;
    end carre;

begin
    -- placer le stylet au centre et vers le nord
    setup;
        
    -- tracer le carre
    carre(100);
    --setup;
    carre(50);
    
    -- revenir au centre sans tracer
        leverStylet;
        centrerStylet;
   
    -- afficher le dessin
        afficherTraceur;
end pleinscarre;

