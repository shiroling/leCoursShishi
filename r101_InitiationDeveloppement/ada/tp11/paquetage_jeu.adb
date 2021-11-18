pragma Ada_2012;
package body paquetage_jeu is

   ---------------------
   -- construire_mots --
   ---------------------

   procedure construire_mots
     (grille         : in     dictionnaire; dico : in dictionnaire;
      mots_a_trouver :    out dictionnaire)
   is
      k      : Integer;
      m      : Mot;
      trouve : Boolean;
      rang   : Integer;
   begin
       mots_a_trouver.nbMots := 0;
   end construire_mots;

   --------------------------
   -- dictionnaires_inclus --
   --------------------------

   function dictionnaire_inclus
     (d1 : in dictionnaire; d2 : dictionnaire) return Boolean
   is
      trouve : Boolean;
      rang   : Integer;
   begin
       return False;
    end dictionnaire_inclus;

   --------------------------
   -- dictionnaires_egaux --
   --------------------------

   function dictionnaires_egaux
     (d1 : in dictionnaire; d2 : dictionnaire) return Boolean
   is
    begin
      return dictionnaire_inclus(d1,d2) and dictionnaire_inclus(d2,d1);
   end dictionnaires_egaux;

end paquetage_jeu ;
