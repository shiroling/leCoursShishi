package TAD_Compteur is
   type compteur is private;



   -- retourne un compteur de valeur      GENERATEUR
   function unCompteur return compteur;

   -- retourne la valeur du compteur c     GETTERS  
   function valeur (c : in compteur) return integer;



   -- ajoute un au compteur c
   function ajouterUn (c : in compteur) return compteur;

   -- remet un compteur c a zero
   function remettreAZero (c : in compteur) return compteur;



private
   type Compteur is new integer;

end TAD_Compteur;