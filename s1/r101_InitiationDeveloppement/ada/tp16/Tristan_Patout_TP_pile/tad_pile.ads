package tad_pile is
   TAILLE_MAX : constant Integer := 100;
   type pile is private;

   PILE_PLEINE : exception;
   PILE_VIDE   : exception;

   --Construit une pile
   function construirePile return pile;

   --Ajoute un element e a la pile p
   --Nécessite que la pile p ne soit pas pleine
   --Lève exception PILE_PLEINE
   function empile (p : in pile; e : in Integer) return pile;

   --Enleve l'élément le plus récent de la pile p
   --Nécessite que la pile p ne soit pas vide
   --Lève PILE_VIDE
   function depile (p : in pile) return pile;

   --Teste si la pile p n'a pas d'élément
   --Retourne vrai si vide et faux si non vide
   function estvide (p : in pile) return Boolean;

   --Retourne l'élément le plus récent de la pile p
   --Nécessite que la pile ne ce soit pas vide
   --Lève l'exception PILE_VIDE
   function dernier (p : in pile) return Integer;
private
   type tabInt is array (1 .. TAILLE_MAX) of Integer;
   type pile is record
      tab : tabInt;
      n   : Integer;
   end record;
end tad_pile;
