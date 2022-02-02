package paquetage_Mot is

   -- exception
   DEBORDEMENT      : exception;
   TRANCHE_INVALIDE : exception;

   -- type Mot
   LONGUEUR_NOM : constant Integer := 30;
   type Mot is private;

   -- constructeur
   function unMot (chaine : in String) return Mot;

   --retourne VRAI si deux mots sont Ã©gaux
   -- et FAUX sinon
   function egal (m1 : in Mot; m2 : in Mot) return Boolean;

   -- retourne VRAI si m1 < m2
   -- et FAUX sinon
   function inf (m1 : Mot; m2 : Mot) return Boolean;

   --crÃ©e un nouveau mot par concatÃ¨nation les 2 mots m1 et m2
   --nÃ©cessite longueur(m1) + longueur(m2) <= LONGUEUR_MOT
   --leve l'exception DEBORDEMENT si longueur(m1) + longueur(m2) > LONGUEUR_MOT
   function concatenation (m1 : in Mot; m2 : in Mot) return Mot;

   -- retourne la longueur du mot m
   function longueur (m : in Mot) return Integer;

   -- retourne le iÃ¨me caractÃ¨re du mot m nÃ©cessite i>0
   -- and i <= LONGUEUR_MOT leve l'exception TRANCHE_INVALIDE si n<=0 ou n >
   -- LONGUEUR_MOT
   function ieme (m : in Mot; i : in Integer) return Character;

   -- transforme le mot m en String
   function chaine (m : in Mot) return string ;

   -- affiche le mot m
   procedure afficher_mot (m : in Mot);

   -- affiche tous le mot m avec sa longueur
   procedure afficher_mot_avec_longueur (m : in Mot);

private
  type Mot is record
      mot      : String (1 .. LONGUEUR_NOM);
      longueur : Integer;
   end record;

end paquetage_Mot;
