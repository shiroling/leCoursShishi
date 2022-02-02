with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body TAD_Dictionnaire is

   ----------------------------
   -- construireDictionnaire --
   ----------------------------
   function construireDictionnaire return TYPE_DICTIONNAIRE is
   dict: TYPE_DICTIONNAIRE;
   begin
        dict.nbmot:= O;
        return dict;
   end construireDictionnaire;



   ------------------
   -- ajouterUnMot --
   ------------------
   procedure ajouterUnMot( d : in out TYPE_DICTIONNAIRE; m : in Mot) is


   begin
        d.mot(b.nbmot+1):= Mot;
        b.nbMot:= nbMot+ 1;
   end ajouterUnMot;



   -------------
   -- estVide --
   -------------
   ... A COMPLETER;


   ---------------
   -- existeMot --
   ---------------

      ... A COMPLETER;


   ------------
   -- taille --
   ------------

      ... A COMPLETER;


   ----------
   -- ieme --
   ----------

      ... A COMPLETER;


   --------------------
   -- supprimerUnMot --
   --------------------

      ... A COMPLETER;


  --   ------------
  --   -- remplir --
  --   ------------
  --
  --   procedure remplir (f : in String; d : out Type_Dictionnaire) is
  --      MonFichier : File_Type;
  --      i          : Integer;
  --      --m: Mot;
  --      m : String (1 .. LONGUEUR_NOM);
  --      l : Natural;
  --   begin
  --      -- ouverture du fichier usagers en lecture
  --      Open (MonFichier, In_File, f);
  --      -- vÃ©rification ouverture correcte
  --      if End_Of_File (MonFichier) then
  --         raise ERREUR_OUVERTURE_FICHIER;
  --      end if;
  --      -- lecture de TOUS les Enregistrement_Usagers tant que la fin de fichier
  --      -- n'est pas atteinte
  --      i := 1;
  --      while not End_Of_File (MonFichier) loop
  --         -- lire l'enregistrement courant dans le fichier
  --         --put("Lecture : ");put(i,0);New_Line;
  --         Get_Line (MonFichier, m, l);
  --         -- afficher l'enregistrement lu
  --         --Put_Line (m.mot (1 .. m.longueur));
  --         d.mots (i) := unMot (m (1 .. l));
  --         i          := i + 1;
  --      end loop;
  --       d.nbMots := i - 1;
  --      -- fermer le fichier
  --      Close (MonFichier);
  --   end remplir;
  --
  --   ---------------------------
  --   -- rechercher_Occurrence --
  --   ----------------------------
  --
  --   procedure rechercher_Occurrence
  --     (d    : in     Type_Dictionnaire; x : in Mot; trouve : out Boolean;
  --      rang :    out Integer)
  --   is
  --      i : Integer := 1;
  --   begin
  --      -- vÃ©rification de d.nbMots
  --      if d.nbMots < 0 or d.nbMots > taille(d) then
  --         raise TRANCHE_INVALIDE;
  --      end if;
  --      -- recherche de l'Ã©lÃ©ment dans le tableau
  --      rang := 0;
  --      while i <= d.nbMots and not egal (d.mots (i), x) loop
  --         i := i + 1;
  --      end loop;
  --      -- rÃ©sultat
  --      if i <= d.nbMots then
  --         trouve := True;
  --         rang   := i;
  --      else
  --         trouve := False;
  --      end if;
  --   end rechercher_Occurrence;
  --
  --  -------------------------------
  --   -- rechercher_Par_Dichotomie --
  --   -------------------------------
  --   procedure rechercher_Par_Dichotomie
  --     (d    : in     Type_Dictionnaire; x : in Mot; trouve : out Boolean;
  --      rang :    out Integer)
  --   is
  --      iDebut  : Integer;
  --      iFin    : Integer;
  --      iMilieu : Integer;
  --   begin
  --      iDebut  := 1;
  --      iFin    := d.nbMots;
  --      iMilieu := (iDebut + iFin) / 2;
  --      while iDebut <= iFin and then not egal (d.mots (iMilieu), x) loop
  --         if inf (x, d.mots (iMilieu)) then
  --            --    put("Le mot ");afficher_Mot(x);put(" < ");
  --            --   afficher_Mot(d.mots(iMilieu));
  --            --   put(" iMilieu=");put(iMilieu,0);new_line;
  --            iFin := iMilieu - 1;
  --         else
  --            --  put("Le mot ");afficher_Mot(x);put(" > ");
  --            --  afficher_Mot(d.mots(iMilieu));put(iMilieu);
  --            --  put(" iMilieu=");put(iMilieu,0);new_line;
  --            iDebut := iMilieu + 1;
  --         end if;
  --         iMilieu := (iDebut + iFin) / 2;
  --      end loop;
  --      if iDebut <= iFin then
  --         trouve := True;
  --         rang   := iMilieu;
  --      else
  --         trouve := False;
  --      end if;
  --   end rechercher_Par_Dichotomie;
  --
  --   -----------------------------------------
  --   -- rechercher_Par_Dichotomie_Recursive --
  --   -----------------------------------------
  --   procedure rechercher_Par_Dichotomie_Recursive
  --     (d : in Type_Dictionnaire; x : in Mot; iDebut : in Integer; iFin : in Integer;
  --      trouve :    out Boolean; rang : out Integer)
  --   is
  --      iMilieu : Integer;
  --   begin
  --      if iDebut <= iFin then
  --         iMilieu := (iDebut + iFin) / 2;
  --         if egal (x, d.mots (iMilieu)) then
  --            trouve := True;
  --            rang   := iMilieu;
  --         else
  --            if inf (x, d.mots (iMilieu)) then
  --               --  put("Le mot ");afficher_mot(x);put(" <
  --               --  "); afficher_Mot(d.mots(iMilieu)); put("
  --               --  iMilieu=");put(iMilieu,0);new_line;
  --               rechercher_Par_Dichotomie_Recursive
  --                 (d, x, iDebut, iMilieu - 1, trouve, rang);
  --            else
  --               --  put("Le mot ");afficher_Mot(x);put(" >
  --               --  "); afficher_Mot(d.mots(iMilieu)); put("
  --               --  iMilieu=");put(iMilieu,0);new_line;
  --               rechercher_Par_Dichotomie_Recursive
  --                 (d, x, iMilieu + 1, iFin, trouve, rang);
  --            end if;
  --         end if;
  --      else
  --         trouve := False;
  --      end if;
  --   end rechercher_Par_Dichotomie_Recursive;
  --
  --   -----------------------------------------
  --   -- rechercher_Par_Hachage --
  --   -----------------------------------------
  --   procedure rechercher_Par_hachage
  --     (d    : in     Type_Dictionnaire; x : in Mot; trouve : out Boolean;
  --      rang :    out Integer)
  --   is
  --   begin
  --      trouve := False;
  --      rang   := 0;
  --   end rechercher_Par_hachage;
  --
  --    --------------------
  --   -- afficher_taille --
  --   ---------------------
  --   procedure afficher_taille (d : in Type_Dictionnaire) is
  --   begin
  --      new_line;
  --      Put ("Il y a ");
  --      Put (d.nbMots, 0);
  --      Put (" mots dans le dictionnaire");
  --   end afficher_taille;
  --
  --   -------------------
  --   -- afficher_mots --
  --   -------------------
  --
  --   procedure afficher_mots (d : in Type_Dictionnaire) is
  --
  --   begin
  --      for i in 1 .. d.nbMots loop
  --         afficher_mot (d.mots (i));
  --      end loop;
  --      New_Line;
  --   end afficher_mots;
  --
  --   ---------------------------------
  --   -- afficher_mots_avec_longueur --
  --   ---------------------------------
  --
  --   procedure afficher_mots_avec_longueur (d : in Type_Dictionnaire) is
  --
  --   begin
  --      for i in 1 .. d.nbMots loop
  --        new_line;
  --          afficher_mot_avec_longueur (d.mots (i));
  --      end loop;
  --      New_Line;
  --   end afficher_mots_avec_longueur;
  --
  --   ----------------------------------
  --   -- affichage resultat rechecher --
  --   ----------------------------------
  --   procedure affichage_resultat
  --     (x : in Mot; trouve : in Boolean; rang : in Integer)
  --   is
  --   begin
  --      New_Line;
  --      Put ("Le mot ");
  --      afficher_mot (x);
  --      if trouve then
  --         Put (" a ete trouve au rang ");
  --         Put (rang, 0);
  --      else
  --         Put (" n'a pas ete trouve");
  --      end if;
  --   end affichage_resultat;

end TAD_Dictionnaire;
