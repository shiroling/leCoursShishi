package usager is

   LONGUEUR_NOM : constant Integer := 20;

   type Type_Usager is record
      numero_adherent : Integer;
      nom                     : String (1 .. LONGUEUR_NOM);
      longueur                : Integer;
      annee_naissance         : Integer;
   end record;

   -- lit les informations de l'usager enreg
   -- nécessite : -
   -- entraine : tous les champs de l'enregistrement usager sont remplis
   procedure getUsager (enreg : out Type_Usager);

   -- affiche les informations de l'usager enreg
   -- nécessite : -
   -- entraine : -
   procedure putUsager (enreg : in Type_Usager);

   -- retourne l'age actuel de l'usager enreg
   -- nécessite : -
   -- entraine : -
   function getAge (enreg : in Type_Usager) return Integer;

   -- operateur affectation
   -- nécessite : -
   -- entraine : enreg2 = enreg1
   procedure affectation (enreg1 : in Type_Usager; enreg2 : out Type_Usager);

   -- operateur affectation
   -- nécessite : -
   -- entraine : enreg2 = enreg1
   function affectation2 (enreg : in Type_Usager) return Type_Usager;
   -- procedure ":=" (enreg1 : in Type_Usager; enreg2 : out Type_Usager);

   -- retourne VRAI si enreg1 et enreg2 ont même nom et même année de naissance
   -- et FAUX sinon
   -- nécessite : -
   -- entraine : -
   function "=" (enreg1 : in Type_Usager; enreg2 : in Type_Usager)return Boolean;

   -- retourne VRAI si les usagers enreg1 et enreg2 ont le même identifiant
   -- même nom et même année de naissance
   -- et FAUX sinon
   -- nécessite : -
   -- entraine : -
   function identityCompare (enreg1 : in Type_Usager; enreg2 : in Type_Usager)return Boolean;

   -- retourne VRAI si l'identifiant de l'usager enreg1 est inférieur
   -- à l'identifiant de l'usager enreg2
   -- et FAUX sinon
   -- nécessite : -
   -- entraine : -
   function "<" (enreg1 : in Type_Usager; enreg2 : in Type_Usager)return Boolean;


end usager;
