
package TAD_Pile is

   -- exceptions
   PILE_VIDE : exception;
   PILE_PLEINE : exception;

   -- type dictionnaire
   TAILLE_MAX : constant Integer := 100;
   type Pile is array(1..TAILLE_MAX) of Integer;

   --retourne une Pile vide
   function construirePile return Pile;

   -- retourne VRAI si la Pile TabP de type Pile est vide et FAUX sinon
   function estVide (TabP : in Pile) return Boolean;

   -- retourne une Pile type Pile apres ajouter(empile) un nouveall
   -- nombre N Integer
   -- nicessite l'a pile TabP n'a pas des elements <= TAILLE_MAX
   -- lève l'exception PILE_PLEINE si les elements dans
   -- la Pile sont = TAILLE_MAX
   function empile (TabP : in Pile; N : in Integer) return Pile;

   -- retourne la Pile de type Pile apres suprimer(depile) la dernier
   -- ensemble ajouter(empile)
   -- nécessite que la Pile TabP soit vide
   -- lève l'exception PILE_VIDE si la Pile est vide
   function depile (TabP : in Pile) return Pile;

   -- retourne Integer aui a ete la la dernier ensemble ajouter(empile)
   -- nécessite que la Pile TabP soit vide
   -- lève l'exception PILE_VIDE si la Pile est vide
   function dernier (TabP : in Pile) return Integer;

end TAD_Pile;
