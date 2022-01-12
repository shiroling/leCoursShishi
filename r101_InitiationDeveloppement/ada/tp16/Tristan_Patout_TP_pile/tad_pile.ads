package tad_pile is
   TAILLE_MAX : constant Integer := 100;
   type pile is private;

   PILE_PLEINE : exception;
   PILE_VIDE   : exception;

   --Construit une pile
   function construirePile return pile;

   --Ajoute un element e a la pile p
   --N�cessite que la pile p ne soit pas pleine
   --L�ve exception PILE_PLEINE
   function empile (p : in pile; e : in Integer) return pile;

   --Enleve l'�l�ment le plus r�cent de la pile p
   --N�cessite que la pile p ne soit pas vide
   --L�ve PILE_VIDE
   function depile (p : in pile) return pile;

   --Teste si la pile p n'a pas d'�l�ment
   --Retourne vrai si vide et faux si non vide
   function estvide (p : in pile) return Boolean;

   --Retourne l'�l�ment le plus r�cent de la pile p
   --N�cessite que la pile ne ce soit pas vide
   --L�ve l'exception PILE_VIDE
   function dernier (p : in pile) return Integer;
private
   type tabInt is array (1 .. TAILLE_MAX) of Integer;
   type pile is record
      tab : tabInt;
      n   : Integer;
   end record;
end tad_pile;
