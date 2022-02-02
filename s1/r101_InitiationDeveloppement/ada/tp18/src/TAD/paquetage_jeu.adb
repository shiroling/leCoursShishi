pragma Ada_2012;
package body paquetage_jeu is

   ---------------------
   -- construire_mots --
   ---------------------

   procedure construire_mots
     (grille         : in     type_dictionnaire; dico : in type_dictionnaire;
      mots_trouves:    out type_dictionnaire)
   is
      k      : Integer;
      m      : Mot;
      trouve : Boolean;
      rang   : Integer;
   begin
      k := 0;
      for i in 1 .. taille(grille) loop
         for j in 1 .. taille(grille) loop
            m := concatenation (ieme(grille,i), ieme(grille,j));
            rechercher_Occurrence (dico, m, trouve, rang);
            if trouve then
               --  put (chaine (concatenation (g (i), g (j)))); Put (" =>
               --  Trouve au rang "); Put (rang, 0); New_Line;
               k                       := k + 1;
               ajouterUnMot(mots_trouves, m);
               --  else
               --     put(" => non trouve ");
            end if;
         end loop;
      end loop;
   end construire_mots;

   --------------------------
   -- dictionnaires_inclus --
   --------------------------

   function dictionnaire_inclus
     (d1 : in type_dictionnaire; d2 : type_dictionnaire) return Boolean
   is
      trouve : Boolean;
      rang   : Integer;
   begin
      for i in 1 .. taille(d1) loop
         rechercher_Occurrence (d2, ieme(d1,i), trouve, rang);
         if not trouve then
            return False;
         end if;
      end loop;
      return True;
   end dictionnaire_inclus;

   --------------------------
   -- dictionnaires_egaux --
   --------------------------

   function dictionnaires_egaux
     (d1 : in type_dictionnaire; d2 : type_dictionnaire) return Boolean
   is
    begin
      return dictionnaire_inclus(d1,d2) and dictionnaire_inclus(d2,d1);
   end dictionnaires_egaux;

end paquetage_jeu;
