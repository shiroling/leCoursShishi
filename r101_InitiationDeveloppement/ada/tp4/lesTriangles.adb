with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
--with Traceur; use Traceur;

procedure lesTriangles  is
    result: Float;

    function somme(nb1: in Integer; nb2: in Integer; nb3: in Integer) return Integer is
    begin
    return nb3+nb2+nb3;
    end somme;


    function distEuclid(nb11: in Float ; nb12: in Float ; nb21: in Float ; nb22: in Float ) return Float  is
    begin
    return sqrt((nb11-nb21) **2 * (nb12-nb22) **2);
    end distEuclid;

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
    return sqrt(dp*(dp - a)*(dp - b)*(dp -c));
    end heron;

begin
    result:= heron(0.0, 0.0, 0.0, 2.0, 0.0, 2.0);
    put(result);
end lesTriangles;
