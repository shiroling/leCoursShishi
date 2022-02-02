with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body paquetage_dictionnaire is

   ------------
   -- remplir --
   ------------

   procedure remplir (f : in String; d : out dictionnaire) is
      MonFichier : File_Type;
      i          : Integer;
      m          : String (1 .. LONGUEUR_NOM);
      l          : Natural;

   begin
      -- ouverture du fichier usagers en lecture
      Open (MonFichier, In_File, f);
      -- vérification ouverture correcte
      if End_Of_File (MonFichier) then
         raise ERREUR_OUVERTURE_FICHIER;
      end if;
      -- lecture de TOUS les Enregistrement_Usagers tant que la fin de fichier
      -- n'est pas atteinte
      i := 1;
      while not End_Of_File (MonFichier) loop
         -- lire l'enregistrement courant dans le fichier
         --put("Lecture : ");put(i,0);New_Line;
         Get_Line (MonFichier, m, l);
         -- afficher l'enregistrement lu
         --Put_Line (m.mot (1 .. m.longueur));
         d.mots (i) := unMot (m (1 .. l));
         i          := i + 1;
      end loop;
      d.nbMots := i - 1;
      -- fermer le fichier
      Close (MonFichier);
   end remplir;

   ---------------------------
   -- rechercher_Occurrence --
   ----------------------------

   procedure rechercher_Occurrence
     (d    : in     dictionnaire; x : in Mot; trouve : out Boolean;
      rang :    out Integer)
   is
      i : Integer;
   begin
      trouve := false;
      rang   := 0;
      -- vérification de d.nbMots
      if d.nbMots < 0 or d.nbMots > d.taille_dictionnaire then
         raise TRANCHE_INVALIDE;
      end if;
      
      -- recherche de l'élément dans le tableau
      rang := 0;
      while i <= d.nbMots and not (d.mots (i)= x) loop
         i := i + 1;
      end loop;
      
      -- résultat
      if i <= d.nbMots then
         trouve := True;
         rang   := i;
         --put("Mot trouve : ");
         --afficher_mot_avec_longueur(d.mots(i));
      else
         trouve := False;
      end if;
    end rechercher_Occurrence;

   -------------------------------
   -- rechercher_Par_Dichotomie --
   -------------------------------
   procedure rechercher_Par_Dichotomie
     (d    : in     dictionnaire; x : in Mot; trouve : out Boolean;
      rang :    out Integer)
   is
      iDebut  : Integer;
      iFin    : Integer;
      iMilieu : Integer;
   begin
              trouve := false;
         rang   := 0;
   end rechercher_Par_Dichotomie;

   -----------------------------------------
   -- rechercher_Par_Dichotomie_Recursive --
   -----------------------------------------
   procedure rechercher_Par_Dichotomie_Recursive
     (d : in dictionnaire; x : in Mot; iDebut : in Integer; iFin : in Integer;
      trouve :    out Boolean; rang : out Integer)
   is
      iMilieu : Integer;
   begin
         trouve := false;
         rang   := 0;
   end rechercher_Par_Dichotomie_Recursive;

   -----------------------------------------
   -- rechercher_Par_Hachage --
   -----------------------------------------
   procedure rechercher_Par_hachage
     (d    : in     dictionnaire; x : in Mot; trouve : out Boolean;
      rang :    out Integer)
   is
   begin
      trouve := False;
      rang   := 0;
   end rechercher_Par_hachage;

    --------------------
   -- afficher_taille --
   ---------------------
   procedure afficher_taille (d : in dictionnaire) is
   begin
      new_line;
      Put ("Il y a ");
      Put (d.nbMots, 0);
      Put (" mots dans le dictionnaire");
   end afficher_taille;

   -------------------
   -- afficher_mots --
   -------------------

   procedure afficher_mots (d : in dictionnaire) is

   begin
      for i in 1 .. d.nbMots loop
         afficher_mot (d.mots (i));
      end loop;
      New_Line;
   end afficher_mots;

   ---------------------------------
   -- afficher_mots_avec_longueur --
   ---------------------------------

   procedure afficher_mots_avec_longueur (d : in dictionnaire) is

   begin
      for i in 1 .. d.nbMots loop
        new_line;
          afficher_mot_avec_longueur (d.mots (i));
      end loop;
      New_Line;
   end afficher_mots_avec_longueur;

   ----------------------------------
   -- affichage resultat rechecher --
   ----------------------------------
   procedure affichage_resultat
     (x : in Mot; trouve : in Boolean; rang : in Integer)
   is
   begin
      New_Line;
      Put ("Le mot ");
      afficher_mot (x);
      if trouve then
         Put (" a ete trouve au rang ");
         Put (rang, 0);
      else
         Put (" n'a pas ete trouve");
      end if;
   end affichage_resultat;

end paquetage_dictionnaire;
