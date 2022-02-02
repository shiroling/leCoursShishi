with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
--with Traceur; use Traceur;

procedure lesTriangles  is
    result: Float;

    -- fonction retournant le somme de deux nombres donnés.
    function somme(nb1: in Integer; nb2: in Integer; nb3: in Integer) return Integer is
    begin
        return nb3+nb2+nb3;
    end somme;

    --retourne la distance euclidienne entre Deux points de coordonées x, y dans le plan.
    --Produit certaines fois des erreures jsp pourquoi .
    function distEuclid(nb11: in Float ; nb12: in Float ; nb21: in Float ; nb22: in Float) return Float  is
    begin
        return sqrt((nb11-nb21)*(nb11-nb21) + (nb12-nb22)*(nb12-nb22));
    end distEuclid;

    --retourne la surface d'un triangle a partie des coordonnées de ses 3 sommets
    --ne fonctionne desfois pas à cause de la fonction distEuclid.
    function heron(nb11: in Float ; nb12: in Float ; nb21: in Float ; nb22: in Float;  nb31: in Float ; nb32: in Float) return Float  is
    dp: Float;
    a: Float;
    b: Float;
    c: Float;
    
    begin
        a:= distEuclid(nb21, nb22, nb31, nb32);
        b:= distEuclid(nb11, nb12, nb31, nb32);
        c:= distEuclid(nb11, nb12, nb21, nb22);
        dp:= (a+b+c)/2.0;
        a:= dp-a;
        b:= dp-b;
        c:= dp-c;

        return sqrt(dp*a*b*c);
    end heron;

    --retourne le déterminant à partir de 4 nombres
    function det2x2(a: in Float ; b: in Float ; c: in Float ; d: in Float ) return Float  is
    begin
        return abs(a*d - c*b);
    end det2x2;  

    --Calcule l'aire d'un triangle grâce au déterminant.
    function aireTriangleDet(nb11: in Float ; nb12: in Float ; nb21: in Float ; nb22: in Float) return float is
    begin
        return 0.5*abs(det2x2(nb11, nb12, nb21, nb22));
    end aireTriangleDet;

    --procédire comparant ls surfaces calculées pas ls deux fonctions.
    procedure verifSurfaces( nb11: in Float; nb12: in Float; nb21: in Float; nb22: in Float; nb31: in Float; nb32: in Float; nbE: in Float) is
    x: Float;
    y: Float;
    begin
        x:= aireTriangleDet((nb11-nb21), (nb12- nb22), (nb11-nb31), (nb12-nb32));
        y:= heron(nb11, nb12, nb21, nb22, nb31, nb32);
        new_line;
        if abs(x-y) < nbE then
            put_line("C'est bon mon bô");
        else
            put_line("C'est pas valide...");
        end if;
    end verifSurfaces;


begin
    verifSurfaces(9.0, 18.0,  20.0, 20.0,  6.0, 12.0, 1.0);
    
end lesTriangles;
