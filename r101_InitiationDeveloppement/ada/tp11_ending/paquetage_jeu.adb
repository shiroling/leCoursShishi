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
      -- A PROGRAMMER
      mots_a_trouver.nbMots := 0;
   end construire_mots;

   --------------------------
   -- dictionnaires_inclus --
   --------------------------

   function dictionnaire_inclus
     (d1 : in dictionnaire; d2 : dictionnaire) return Boolean is
      trouve : Boolean;
      rang   : Integer;
      i: Integer;
   begin
      trouve:= TRUE;
      if d1.nbMots = d2.nbMots then

         i:= 1;
         while i <= d1.nbMots and trouve loop
            if (d1.mots(i) = d2.mots(i))= FALSE then
               trouve:= FALSE;

            end if;
         end loop;

      else
         trouve:= FALSE;
      end if;
      return trouve;
   end dictionnaire_inclus;

   --------------------------
   -- dictionnaires_egaux --
   --------------------------

   function dictionnaires_egaux
     (d1 : in dictionnaire; d2 : dictionnaire) return Boolean
   is
   begin
      -- A PROGRAMMER
      return false;
   end dictionnaires_egaux;

end paquetage_jeu;
