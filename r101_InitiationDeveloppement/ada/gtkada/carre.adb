
with Traceur; use Traceur;

procedure pleinscarre  is

    -- placer le stylet au centre et vers le nord
    procedure setup is
    begin
        initialiserTraceur;
        leverStylet;
        centrerStylet;
        orienterNord; 
    end setup;

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

    procedure carre(length : in Integer) is
    i : Integer; -- compteur
    halfLength : Integer; --moitié de la longueur

    begin
        halfLength:= length /2;        
        centrerStylet;
        orienterNord;
        goFwd(halfLength);
        pivoterGauche;
        goFwd(halfLength);

        i:= 0;
        while i < 4 loop
            pivoterGauche;
            trait(length);
            i:= i + 1;
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

