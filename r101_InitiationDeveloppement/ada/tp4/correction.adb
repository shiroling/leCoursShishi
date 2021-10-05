with Ada.Text_IO;                       use Ada.Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure TP4_S1_Corrige is

   -- EXERCICE PRELIMINAIRE
   -- retourne la somme des nombres a, b et c preconditions : -
   -- postcondition : le resultat = a+b+c
   function sommeDeTroisNombres
     (a : in Float; b : Float; c : Float) return Float
        return a+b+c;    
   end sommeDeTroisNombres;

   -- EXERCICE 1
   -- Calcule la distance entre deux points du plan x1 abscisse du premier
   -- point y1 ordonnEe du premier point x2 abscisse du deuxieme point y2
   -- ordonnEe du premier point precondition :
   -- postcondition : resultat = Racine carre ((x1-x2)**2+(y1-y2)**2)
   function distEuclid (x1 : in Float; y1 : in Float;
                        x2 : in Float; y2 : in Float) return Float is
    begin
        return sqrt((x1-y1)*(x1-x2)*(y1-y2)*(y1-y2));
   end calcDistance;

   -- EXERCICE 2
   -- calcule le demi perimetre des 3 cotes a, b et c d'un triangle
   -- precondition : a, b et c sont >=0
   -- postcondition : resultat = a+b+c / 2
   function demiPerimetre (a : Float; b : Float; c : Float) return Float is
   begin
        a:= distEuclid(nb21, nb22, nb31, nb32);
        b:= distEuclid(nb11, nb12, nb31, nb32);
        c:= distEuclid(nb11, nb12, nb21, nb22);        
        
        return dp:= (a+b+c)/2.0;
   end demiPerimetre;

   -- calcule la surface d'un triangle en appliquant la formule de Heron
   -- x1 abscisse et y1 ordonnee du premier point
   -- x2 abscisse et y2 ordonnee du second point
   -- x3 abscisse et y3 ordonnee du troisieme point
   -- precondition :
   -- postcondition : soient dp le demi-perimetre
   -- a, b et c les distances du 3 points
   -- resulat = Racine carree (dp*(dp-a)*(dp-b)*(dp-c))
   function aireTriangleHeron
     (nb11 : in Float; nb12 : in Float; nb12 : in Float; nb22 : in Float;
      nb31 : in Float; nb32 : in Float) return Float
    begin
        a:= distEuclid(nb21, nb22, nb31, nb32);
        b:= distEuclid(nb11, nb12, nb31, nb32);
        c:= distEuclid(nb11, nb12, nb21, nb22);
        dp:= demiPerimetre(a, b, c);
        a:= dp-a;
        b:= dp-b;
        c:= dp-c;

        return sqrt(dp*a*b*c);
    end aireTriangleHeron;

   -- EXERCICE 3
   -- Calcule le determinant de 4 réels a, b, c et d
   -- Precondition :
   -- Postcondition : resultat = a*d - c*b
   function det2x2
     (a : in float; b : in float; c : in float; d : in float)
      return float
    begin
        return abs(a*d - c*b);
   end det2x2;

   -- EXCERCISE 4
   -- calcule la surface d'un triangle en appliquant avec un determinant
   -- x1 abscisse et y1 ordonnee du premier point
   -- x2 abscisse et y2 ordonnee du second point
   -- x3 abscisse et y3 ordonnee du troisieme point
   -- precondition :
   -- postcondition : ??
   function aireTriangleDeT
     (x1 : in float; y1 : in float; x2 : in float; y2 : in float;
      x3 : in float; y3 : in float) return Float is
    begin
        return 0.5*abs(det2x2(nb11, nb12, nb21, nb22)),
   end aireTriangleDeT;

   -- EXERCICE 5
   -- Retourne VRAI si le calcul de l'aire d'un triangle par la méthode
   -- de Heron donne le même resultat que le calcul par la methode du
   -- determinant
   -- retourne FAUX sinon
   -- x1 abscisse et y1 ordonnee du premier point
   -- x2 abscisse et y2 ordonnee du second point
   -- x3 abscisse et y3 ordonnee du troisieme point
   -- precondition :
   -- postcondition : une difference est a epsilon pres est acceptee
   function verifSurfaces ( x1 : in float; y1 : in float; x2 : in float; y2 : in float;
                            x3 : in float; y3 : in float; epsilon : in Float) return Boolean is
    begin
        
    end verifSurfaces;

   -- PROGRAMMES DE TESTS
   -- QUESTION PRELIMINAIRE
   procedure testPreliminaire is
   begin
      if sommeDeTroisNombres (0.0, 0.0, 0.0) /= 0.0 or
        sommeDeTroisNombres (0.0, 1.0, 2.0) /= 3.0 or
        sommeDeTroisNombres (-10.0, 0.0, 0.0) /= -10.0
      then
         Put_Line ("La fonction sommeDeTroisNombres est FAUSSE");
      else
         Put_Line ("La fonction sommeDeTroisNombres n'est pas FAUSSE");
      end if;
   end testPreliminaire;

   --EXCERCICE 1
   procedure testDistanceEntreDeuxPoints is
   begin
      if calcDistance (0.0, 0.0, 1.0, 1.0) /= Sqrt (2.0) or
         calcDistance (0.0, 1.0, 1.0, 0.0) /= Sqrt (2.0)
      then
         Put_Line ("La fonction calcul de distance est FAUSSE");
      else
         Put_Line ("La fonction calcul de distance n'est pas FAUSSE");
      end if;
   end testDistanceEntreDeuxPoints;

   -- EXCERCICE 2
   procedure testSurfaceDUnTriangleParHeron is
   begin
      if aireTriangleHeron (0.0, 0.0, 3.0, 6.0, 0.0, 4.0) /= 6.0 then
         Put_Line
           ("La fonction calcul de l'aire d'un triangle par Heron est FAUSSE");
      else
         Put_Line
           ("La fonction calcul de l'aire d'un triangle par Heron n'est pas FAUSSE");
      end if;
   end testSurfaceDUnTriangleParHeron;

   -- EXCERCICE 3
   procedure testDeterminant2x2 is
   begin
      if det2x2 (1.0, 1.0, 1.0, 1.0) /= 0.0 or
        det2x2 (2.0, 1.0, 1.0, 1.0) /= 1.0 or
        det2x2 (1.0, 2.0, 1.0, 1.0) /= -1.0
      then
         Put_Line ("La fonction calcul du determinant est FAUSSE");
      else
         Put_Line ("La fonction calcul du determinant n'est pas FAUSSE");
      end if;
   end testDeterminant2x2;

   -- EXCERCICE 4
   procedure testSurfaceDUnTriangleParDeterminant is
   begin
      if aireTriangleDeT (0.0, 0.0, 3.0, 6.0, 0.0, 4.0) /= 6.0 then
         Put_Line
           ("La fonction calcul de l'aire d'un triangle par determinant est FAUSSE");
      else
         Put_Line
           ("La fonction calcul de l'aire d'un triangle par determinant n'est pas FAUSSE");
      end if;
   end testSurfaceDUnTriangleParDeterminant;

   -- EXCERCICE 5
   procedure testVerification is
   begin
      if verifSurfaces (0.0, 0.0, 3.0, 6.0, 0.0, 4.0, 0.1) = False then
         Put_Line
           ("La fonction calcul de verification des aires d'un triangle est FAUSSE");
      else
         Put_Line
           ("La fonction calcul de verification des aires d'un triangle n'est pas FAUSSE");
      end if;
   end testVerification;

--PROGRAMME PRINCIPAL de tests
begin
   testPreliminaire ;
   testDistanceEntreDeuxPoints;
   testSurfaceDUnTriangleParHeron;
   testDeterminant2x2;
   testSurfaceDUnTriangleParDeterminant;
   testVerification;
end TP4_S1_Corrige;