with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
--with Traceur; use Traceur;

procedure lesTriangles  is
    result: Float;
    a1: Float;
    b1: Float;
    c1: Float;
    dp1: Float;

    -- fonction retournant le somme de deux nombres donnés.
    function somme(nb1: in Integer; nb2: in Integer; nb3: in Integer) return Integer is
    begin
    return nb3+nb2+nb3;
    end somme;

    --retourne la distance euclidienne entre Deux points de coordonées x, y dans le plan.
    --Produit certaines fois des erreures jsp pourquoi .
    function distEuclid(nb11: in Float ; nb12: in Float ; nb21: in Float ; nb22: in Float ) return Float  is
    begin
    return sqrt((nb11-nb21)*(nb11-nb21)*(nb12-nb22)*(nb12-nb22));
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
    put(dp);
    a:= dp - a;
    b:= dp - b;
    c:= dp - c;
    new_line;
    put(a);
    put(b);
    put(c);
    new_line;

    if( a<0.0 or b<0.0 or c<0.0) then
        put("ERROR: triangle plat.  ");
        return -1.0;
    end if;

    return sqrt(dp*a*b*c);
    end heron;  

begin

    put(heron(0.0, 34.0, 1.0, 4.0, 3.0, 20.0));
end lesTriangles;
