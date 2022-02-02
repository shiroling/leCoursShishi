with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with TAD_Dictionnaire;    use TAD_Dictionnaire;
with paquetage_Mot;       use paquetage_Mot;

package body tests_TAD_Dictionnaire is

   -- 1 (P1) estVide (construireDictionnaire) = VRAI
   function P1 return Boolean is
      d : TYPE_DICTIONNAIRE;
   begin
      d := construireDictionnaire ;
      return (estVide (d));
   end P1;

   -- 2 (P2) estVide (ajouterUnMot (construireDictionnaire, m)) = FAUX
   function P2 return Boolean is
      d : TYPE_DICTIONNAIRE;
      m : Mot := unMot ("Toto");
   begin
      d := construireDictionnaire ;
      ajouterUnMot (d, m);
      return not (estVide (d));
   end P2;

   -- 3 (P3) estVide (supprimerUnMot (ajouterUnMot (construireDictionnaire, m),
   -- m)) = VRAI Vérifie que le Type_Dictionnaire est vide si j’ajoute
   -- un mot puis je le supprime
   function P3a return Boolean is
      d : TYPE_DICTIONNAIRE;
      m : Mot := unMot ("Toto");
   begin
      d := construireDictionnaire ;
      ajouterUnMot (d, m);
      supprimerUnMot (d, m);
      return (estVide (d));
   end P3a;

   -- 4 (P3) estVide (supprimerUnMot (ajouterUnMot (construireDictionnaire,
   -- m), m)) = VRAI Vérifie que le Type_Dictionnaire n’est pas vide
   -- si j’ajoute deux mots puis j’en supprime un
   function P3b return Boolean is
      d  : TYPE_DICTIONNAIRE;
      m1 : Mot := unMot ("Toto");
      m2 : Mot := unMot ("Titi");
   begin
      d := construireDictionnaire ;
      ajouterUnMot (d, m1);
      ajouterUnMot (d, m2);
      supprimerUnMot (d, m2);
      return not (estVide (d));
   end P3b;

   -- 5 (P4) taille (construireDictionnaire) = 0
   function P4 return Boolean is
      d : TYPE_DICTIONNAIRE;

   begin
      d := construireDictionnaire ;
      return (taille (d) = 0);
   end P4;

   -- 6 (P5) taille (ajouterUnMot (construireDictionnaire, m)) = 0
   function P5 return Boolean is
      d : TYPE_DICTIONNAIRE;

      m : Mot := unMot ("Toto");
   begin
      d := construireDictionnaire ;
      ajouterUnMot (d, m);
      return not (taille (d) = 0);
   end P5;

   -- 7 (P6) taille (supprimerUnMot (ajouterUnMot (construireDictionnaire, m),
   -- m)) = 0 Vérifie que le Type_Dictionnaire est vide si j’ajoute un
   -- mot puis je le supprime
   function P6a return Boolean is
      d : TYPE_DICTIONNAIRE;

      m : Mot := unMot ("Toto");
   begin
      d := construireDictionnaire ;
      ajouterUnMot (d, m);
      supprimerUnMot (d, m);
      return (taille (d) = 0);
   end P6a;

   -- 8 (P6) taille (supprimerUnMot (ajouterUnMot (construireDictionnaire,
   -- m), m)) = 1 Vérifie que le Type_Dictionnaire n’est pas vide
   -- si j’ajoute deux mots puis j’en supprime un
   function P6b return Boolean is
      d  : TYPE_DICTIONNAIRE;
      m1 : Mot := unMot ("Toto");
      m2 : Mot := unMot ("Titi");
   begin
      d := construireDictionnaire ;
      ajouterUnMot (d, m1);
      ajouterUnMot (d, m2);
      supprimerUnMot (d, m2);
      return taille (d) = 1;
   end P6b;

   -- 9 (P7) existeMot (construireDictionnaire,m) = FAUX
   function P7 return Boolean is
      d : TYPE_DICTIONNAIRE;
      m : Mot := unMot ("Toto");
   begin
      d := construireDictionnaire ;
      return not existeMot (d, m);
   end P7;

   -- (P8) existeMot (ajouterUnMot (construireDictionnaire, m1),m2) = m1=m2
   function P8a return Boolean is
      d : TYPE_DICTIONNAIRE;
      m : Mot := unMot ("Toto");
   begin
      d := construireDictionnaire ;
      ajouterUnMot (d, m);
      return existeMot (d, m);
   end P8a;

   -- 10 (P8) existeMot (ajouterUnMot (construireDictionnaire, m1),m2) = m1=m2
   function P8b return Boolean is
      d  : TYPE_DICTIONNAIRE;
      m1 : Mot := unMot ("Toto");
      m2 : Mot := unMot ("Titi");
   begin
      d := construireDictionnaire ;
      ajouterUnMot (d, m1);
      return not existeMot (d, m2);
   end P8b;

   -- 11 (P9) existeMot (supprimerUnMot (ajouterUnMot (construireDictionnaire,
   -- m), m)) = FAUX Vérifie que le Type_Dictionnaire est vide si
   -- j’ajoute un mot puis je le supprime
   function P9 return Boolean is
      d : TYPE_DICTIONNAIRE;
      m : Mot := unMot ("Toto");
   begin
      d := construireDictionnaire ;
      ajouterUnMot (d, m);
      supprimerUnMot (d, m);
      return not existeMot (d, m);
   end P9;

   -- 12 Exception MOT_DEJA_PRESENT
   function test_mot_deja_present return Boolean is
      d : TYPE_DICTIONNAIRE;
      m : Mot := unMot ("Toto");
   begin
      d := construireDictionnaire ;
      ajouterUnMot (d, m);
      ajouterUnMot (d, m);
      return False;
   exception
      when MOT_DEJA_PRESENT =>
         return True;
      when others =>
         return False;
   end test_mot_deja_present;

   -- 14 Exception TAILLE_MAX
   function test_taille_max return Boolean is
      d  : TYPE_DICTIONNAIRE;
      m1 : Mot;
      m2 : Mot := unMot ("Titi");
   begin
      d := construireDictionnaire ;
      for i in 1 .. TAILLE_MAX loop
         m1 := unMot (Integer'image (i));
         ajouterUnMot (d, m1);
      end loop;
      ajouterUnMot (d, m2);
      return False;
   exception
      when TAD_Dictionnaire.DEBORDEMENT =>
         return True;
      when MOT_DEJA_PRESENT =>
         return False;
      when others =>
         return False;
   end test_taille_max;

   -- 14 Exception Type_Dictionnaire_VIDE
   function test_Dictionnaire_vide return Boolean is
      d : TYPE_DICTIONNAIRE;
      m : Mot := unMot ("Toto");
   begin
      d := construireDictionnaire ;
      supprimerUnMot (d, m);
      return False;
   exception
      when DICTIONNAIRE_VIDE =>
         return True;
      when others =>
         return False;
   end test_Dictionnaire_vide;

   -- Exception MOT_NON_PRESENT
   function test_mot_non_present return Boolean is
      d  : TYPE_DICTIONNAIRE;
      m1 : Mot := unMot ("Toto");
      m2 : Mot := unMot ("Titi");
   begin
      d := construireDictionnaire ;
      ajouterUnMot (d, m1);
      supprimerUnMot (d, m2);
      return False;
   exception
      when MOT_NON_PRESENT =>
         return True;
      when others =>
         return False;
   end test_mot_non_present;

   --  -- TEST remplir tableau dictionnaire
   --  function test_remplir_tableau return Boolean is
   --     d : TYPE_DICTIONNAIRE;
   --  begin
   --     New_Line;
   --     Put ("********* TEST AFFICHAGE DICTIONNAIRE ");
   --     remplir ("Dictionnaires\dictionnaire_sans_accent.txt", d);
   --     Put (" ** il y a ");
   --     Put (taille (d), 0);
   --     Put_Line (" mots dans le tableau");
   --     return taille (d) >= 0;
   --  exception
   --     when ERREUR_OUVERTURE_FICHIER =>
   --        return False;
   --     when others =>
   --        return False;
   --  end test_remplir_tableau;
   --
   --  -- test rechercher valeur séquentiel
   --  function test_rechercher_mot_trouve return Boolean is
   --     d      : TYPE_DICTIONNAIRE;
   --     x      : Mot;
   --     trouve : Boolean;
   --     rang   : Integer;
   --  begin
   --     remplir ("Dictionnaires\dictionnaire_sans_accent.txt", d);
   --     x := unMot ("bille");
   --     rechercher_Occurrence (d, x, trouve, rang);
   --     return trouve and rang = 30_619;
   --  end test_rechercher_mot_trouve;
   --
   --  -- test rechercher valeur séquentiel
   --  function test_rechercher_mot_non_trouve return Boolean is
   --     d      : TYPE_DICTIONNAIRE;
   --     x      : Mot;
   --     trouve : Boolean;
   --     rang   : Integer;
   --  begin
   --     remplir ("Dictionnaires\dictionnaire_sans_accent.txt", d);
   --     x := unMot ("xxxxxxxxx");
   --     rechercher_Occurrence (d, x, trouve, rang);
   --     return not trouve;
   --  end test_rechercher_mot_non_trouve;
   --
   --  -- test rechercher valeur par dichotomie
   --  function test_rechercher_par_dichotomie_mot_trouve return Boolean is
   --     d      : TYPE_DICTIONNAIRE;
   --     x      : Mot;
   --     trouve : Boolean;
   --     rang   : Integer;
   --  begin
   --     remplir ("Dictionnaires\dictionnaire_sans_accent.txt", d);
   --     x := unMot ("bille");
   --     rechercher_Par_Dichotomie (d, x, trouve, rang);
   --     return trouve and rang = 30_619;
   --  end test_rechercher_par_dichotomie_mot_trouve;
   --
   --  -- test rechercher valeur séquentiel
   --  function test_rechercher_par_dichotomie_mot_non_trouve return Boolean is
   --     d      : TYPE_DICTIONNAIRE;
   --     x      : Mot;
   --     trouve : Boolean;
   --     rang   : Integer;
   --  begin
   --     remplir ("Dictionnaires\dictionnaire_sans_accent.txt", d);
   --     x := unMot ("xxxxxxxxx");
   --     rechercher_Par_Dichotomie (d, x, trouve, rang);
   --     return not trouve;
   --  end test_rechercher_par_dichotomie_mot_non_trouve;
   --
   --  -- test rechercher valeur par dichotomie récursive
   --  function test_rechercher_par_dichotomie_recursive_mot_trouve return Boolean
   --  is
   --     d      : TYPE_DICTIONNAIRE;
   --     x      : Mot;
   --     trouve : Boolean;
   --     rang   : Integer;
   --  begin
   --     remplir ("Dictionnaires\dictionnaire_sans_accent.txt", d);
   --     x := unMot ("bille");
   --     rechercher_Par_Dichotomie_Recursive (d, x, 1, taille (d), trouve, rang);
   --     return trouve and rang = 30_619;
   --  end test_rechercher_par_dichotomie_recursive_mot_trouve;
   --
   --  -- test rechercher valeur séquentiel
   --  function test_rechercher_par_dichotomie_recursive_mot_non_trouve
   --     return Boolean
   --  is
   --     d      : TYPE_DICTIONNAIRE;
   --     x      : Mot;
   --     trouve : Boolean;
   --     rang   : Integer;
   --  begin
   --     remplir ("Dictionnaires\dictionnaire_sans_accent.txt", d);
   --     x := unMot ("xxxxxxxxx");
   --     rechercher_Par_Dichotomie_Recursive (d, x, 1, taille (d), trouve, rang);
   --     return not trouve;
   --  end test_rechercher_par_dichotomie_recursive_mot_non_trouve;
   --
end tests_TAD_Dictionnaire;
