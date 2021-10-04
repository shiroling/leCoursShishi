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
    function distEuclid(nb11: in Float ; nb12: in Float ; nb21: in Float ; nb22: in Float ) return Float  is
    begin
<<<<<<< HEAD:r101_InitiationDeveloppement/ada/tp4/triangles/lesTriangles.adb
        put("roots: ");
        put((nb11-nb21) **2);
        put((nb12-nb22) **2);
        return sqrt(((nb11-nb21) **2) * ((nb12-nb22) **2));
=======
    return sqrt((nb11-nb21)*(nb11-nb21)*(nb12-nb22)*(nb12-nb22));
>>>>>>> 1c15bdb90e31823ff926ec24ee914614576a5014:r101_InitiationDeveloppement/lesTriangles.adb
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
        put("a: ");
        put(a);
        new_line;
        b:= distEuclid(nb11, nb12, nb31, nb32);
        put("b: ");
        put(b);
        new_line;
        c:= distEuclid(nb11, nb12, nb21, nb22);
        put("c: ");
        put(c);
        new_line;
        dp:= (a+b+c)/2.0;
        put(dp);
        new_line;
        return sqrt(dp*(dp - a)*(dp - b)*(dp -c));
    end heron;

    function det2x2(nb11: in Float ; nb12: in Float ; nb21: in Float ; nb22: in Float ) return Float  is
    begin
        return nb11*nb22 - nb12*nb21;
    end det2x2;  

    function vectorPart (a: in Float ; b: in Float ) return Float  is
    begin
        return b-a;
    end vectorPart;

    function aireTriangleDet(nb11: in Float ; nb12: in Float ; nb21: in Float ; nb22: in Float) return float is
    begin
        return 0.5*abs(det2x2(nb11, nb12, nb21, nb22));
    end aireTriangleDet;

    procedure verifSurfaces( nb11: in Float; nb12: in Float; nb21: in Float; nb22: in Float; nb31: in Float; nb32: in Float; nbE: in Float) is
    x: Float;
    y: Float;
    begin
        x:= aireTriangleDet(vectorPart(nb11, nb21), vectorPart(nb12, nb22),
                            vectorPart(nb11, nb31), vectorPart(nb12, nb32));
        y:= heron(nb11, nb12, nb21, nb22, nb31, nb32);
        put("x: ");
        put(x);
        new_line;
        put("y: ");
        put(y);
        new_line;
        if abs(x-y) < nbE then
            put_line("C'est bon mon bô");
        else
            put_line("C'est pas valide...");
        end if;
    end verifSurfaces;


begin
    verifSurfaces(2.0, 1.0,  6.0, 1.0,  6.0, 4.0, 6.0);
    
end lesTriangles;
