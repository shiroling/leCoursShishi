package body TAD_Compteur is

   ----------------
   -- unCompteur --
   ----------------

   function unCompteur return Compteur is
      c : Compteur;
   begin
      c := 0;
      return c;
   end unCompteur;

   ------------
   -- valeur --
   ------------

   function valeur (c : in Compteur) return Integer is
   begin
      return integer (c);
   end valeur;

   ---------------
   -- ajouterUn --
   ---------------

   function ajouterUn (c : in Compteur) return Compteur is
   begin
      return (c + 1) mod 10;
   end ajouterUn;

   -------------------
   -- remettreAZero --
   -------------------

   function remettreAZero (c : in Compteur) return Compteur is
      nouveauC : Compteur;
   begin
      nouveauC := 0;
      return nouveauC;
   end remettreAZero;

end TAD_Compteur;
