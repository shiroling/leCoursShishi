package TAD_pile is


   PILE_VIDE : exception;
   PILE_PLEINE : exception;

   TAILLE_MAX : constant Integer := 35;
   type TabEntiers is array (1 .. TAILLE_MAX) of Integer;

   type Pile is record
      tab : TabEntiers;
      nbElements : Integer;
   end record;



   --cree une pile vide
   --generateur primaire
   function construirePile return Pile;

   --ajoute des valeurs a une pile
   --prend en entree une pile
   --retourne la pile mis a jour
   --la pile doit etre cree
   --generateur secondaire
   function empile(P:in Pile; e:in Integer) return Pile;


   --retire des valeurs d'une pile
   --prend en entree une pile
   --retourne la pile mis a jour
   --les valeurs sont retire une par une en partant du sommet
   --la pile ne doit pas etre vide
   --generateur secondaire
   function depile(P:in Pile) return Pile;


   --prend en entree une pile
   --retourne la valeur du sommet
   --la pile ne dois pas etre vide
   --observateur
   function dernier(P:in Pile) return Integer;


   --test si une pile est vide
   --prend en entree une pile
   --retourne un booleen
   --observateur
   function estVide (P:in Pile) return Boolean;



end TAD_pile;
