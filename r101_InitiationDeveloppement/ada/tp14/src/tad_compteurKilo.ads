with TAD_Compteur; use TAD_Compteur;

package TAD_CompteurKilo is

   VALEUR_INVALIDE  : exception;
   COMPTEUR_DEPASSE : exception;

   type cptKilo is private;

   -- retourne un compteur kilometrique dont la valeur des unités est u
   -- celle des dizaine d et celle des centaine c
   function unCptKilo (c : in Compteur ; d : Compteur ; u : compteur)
                       return cptKilo;                                     --GEN



   -- retourne un compteur kilometrique dont la valeur est v
   -- necessite v>= 0 et v <= 999
   -- leve l'exception VALEUR_INVALIDE si v < 0 ou v > 999
   --function unCptKilo (v : in Integer) return cptKilo;

   -- retourne le nombre d'unite du compteur c
   function obtenirUnite (c : in cptKilo) return compteur;

   -- retourne le nombre de dizaine du compteur c
   function obtenirDizaine (c : in cptKilo) return compteur;

   -- retourne le nombre de centaine du compteur c
   function obtenirCentaine (c : in cptKilo) return compteur;


   -- retourne la valeur du compteur c
   function valeur (c : in cptKilo) return Integer;



   -- retourne VRAI si la valeur du compteur c1 < valeur de c2
   function inf (c1 : in cptKilo; c2 : in cptKilo) return Boolean;

   -- retourne VRAI si la valeur du compteur c1 = valeur de c2
   function egal (c1 : in cptKilo; c2 : in cptKilo) return Boolean;




   -- la composante unite du compteur kilometrique prend la valeur v
   procedure modifierUnite (c : in out cptKilo; v : in compteur);

   -- la composante dizaine du compteur kilometrique prend la valeur v
   procedure modifierDizaine (c : in out cptKilo; v : in compteur);

   -- la composante centaines du compteur kilometrique prend la valeur v
   procedure modifierCentaine (c : in out cptKilo; v : in compteur);





   -- ajoute un au compteur c
   -- necessite c >= 0 et c < 999
   -- leve l'exception COMPTEUR_DEPASSE si v > 998
   procedure ajouterUnKilometre (c : in out cptKilo);





   -- remet un compteur c a zero
   procedure remettreAZero (c : in out cptKilo);







private
   type cptKilo is record
      unites    : compteur;
      dizaines  : compteur;
      centaines : compteur;
   end record;

end TAD_CompteurKilo;
