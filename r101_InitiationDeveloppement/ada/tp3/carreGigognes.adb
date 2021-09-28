
with Traceur; use Traceur;

procedure carreGigognes  is

    cote: Integer;
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
        
    -- tracer les carres
    cote:= 20;
    while cote<220 loop
        carre(cote);
        cote:= cote + 50;
    end loop;
    
    -- revenir au centre sans tracer
        leverStylet;
        centrerStylet;
   
    -- afficher le dessin
        afficherTraceur;
end carreGigognes;

