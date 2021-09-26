
with Traceur; use Traceur;

procedure coinsCarres  is
    i: Integer;
    cote: Integer;
    -- placer le stylet au centre et vers le nord
    procedure setup is
    begin
        initialiserTraceur;
        leverStylet;
        centrerStylet;
        orienterNord; 
    end setup;

    procedure pivoterDroite is
    i: Integer;
    begin
        i:= 0;
        while i < 3 loop
            pivoterGauche;
            i:= i+1;
        end loop;
    end pivoterDroite;

    procedure goFwd(length : in Integer) is
    i : Integer;

    begin
        i :=0; 
        while i < length loop
            deplacerStylet;
            i:= i+1;
        end loop;
    end goFwd;

    procedure trait(length : in Integer) is
    begin
        baisserStylet;
        goFwd(length);
        leverStylet;
    end trait;

    -- permet de tracer un carré de longueure variable, 
    -- prenant comme point de départ le Stylet actuellemen placé.
    procedure carre(length : in Integer) is
    i : Integer; -- compteur

    begin
        i:= 0;
        while i < 4 loop
            trait(length);
            pivoterGauche;
            i:= i + 1;
        end loop;
        pivoterDroite;
    end carre;

begin
    
    cote:= 50;
    -- placer le stylet au centre et vers le nord
    setup;
    -- placement spécifique à l'exercice
    goFwd(cote);
    pivoterGauche;
    goFwd(cote);

    -- tracer la figure
    i:=0;
    while i< 4 loop
        carre(cote);
        trait(2*cote);
        i:= i+1;
    end loop;
    
    -- revenir au centre sans tracer
        leverStylet;
        centrerStylet;
   
    -- afficher le dessin
        afficherTraceur;
end coinsCarres;

