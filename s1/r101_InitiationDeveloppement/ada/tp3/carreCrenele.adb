
with Traceur; use Traceur;

procedure carreCrenele  is
    i: Integer;
    j: Integer;
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

    procedure crenau (length: in Integer) is
    begin
        pivoterDroite;
        trait(length);
        pivoterGauche;
        trait(length);
        pivoterGauche;
        trait(length);
        pivoterDroite;
        trait(length);
    end crenau;

begin
    
    cote:= 50;
    -- placer le stylet au centre et vers le nord
    setup;
    -- placement spécifique à l'exercice


    -- tracer la figure
    i:= 0;
    while i< 4 loop
        trait(20);
        j:= 0;
        while j<3 loop
        crenau(20);
        j:= j+1;
        end loop;
        pivoterGauche;
        i:= i+1;
    end loop;
    
    -- revenir au centre sans tracer
        leverStylet;
        centrerStylet;
   
    -- afficher le dessin
        afficherTraceur;
end carreCrenele;

