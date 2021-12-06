with ada.Text_IO ; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with paquetage_Mot ; use paquetage_Mot;
with paquetage_dictionnaire; use paquetage_dictionnaire;

package body paquetage_tests_recherches is

   procedure resultat_test (libelle : in String; test : in Boolean)
   is
   begin
      New_Line;
      Put ("Test ");
      Put (libelle);
      Put (" est ");
      if test then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end resultat_test;

   -- test affichage tableau
   --  New_Line;
   --  Put ("********* TEST AFFICHAGE DICTIONNAIRE ");
   --  afficher_mots_avec_longueur (d);

   --------------------------
   -- test_remplir_tableau --
   --------------------------

   procedure test_remplir_tableau (d : out Dictionnaire) is
   begin
   New_Line;
   Put ("********* TEST REMPLISSAGE DICTIONNAIRE ");
   remplir ("dictionnaire_sans_accent.txt", d);
   afficher_taille(d);
   resultat_test("0 : taille du dictionnaire",d.nbMots=336532);
   New_Line;
   end test_remplir_tableau;

   ---------------------------------
   -- test_recherche_sequentielle --
   ---------------------------------

   procedure test_recherche_sequentielle (d : in Dictionnaire)is
      x      : Mot;
   trouve : Boolean;
      rang   : Integer;
   begin
 -- TEST rechercher valeur séquentiellement
   New_Line;
   Put_Line ("********* TEST RECHERCHE SEQUENTIELLE ");
   -- test 1 : élément existant
   x := unMot ("bille");
   -- put("Mot recherche : ");afficher_mot_avec_longueur(x); new_line;
   rechercher_Occurrence (d, x, trouve, rang);
   affichage_resultat (x, trouve, rang);
   resultat_test
     ("1 : mot existe dans le dictionnaire", trouve and rang = 30_619);
   -- test 2 : élément non existant
   x := unMot ("abcdef");
   rechercher_Occurrence (d, x, trouve, rang);
   affichage_resultat (x, trouve, rang);
   resultat_test
     ("2 : mot n'existe pas dans le dictionnaire", not trouve);
   -- test 3 : dernier élément
   x := unMot ("zythums");
   rechercher_Occurrence (d, x, trouve, rang);
   affichage_resultat (x, trouve, rang);
   resultat_test
        ("3 : dernier mot dans le dictionnaire",  trouve and rang=33_6532);
        -- test 4 : premier élément
   x := unMot ("a");
   rechercher_Occurrence (d, x, trouve, rang);
   affichage_resultat (x, trouve, rang);
   resultat_test
        ("4 : premier mot dans le dictionnaire",  trouve and rang=1);
   end test_recherche_sequentielle;

   ---------------------------------
   -- test_recherche_dichotomique --
   ---------------------------------

   procedure test_recherche_dichotomique (d : in Dictionnaire)is
      x      : Mot;
   trouve : Boolean;
      rang   : Integer;
   begin
 -- TEST rechercher valeur par dichotomie
   New_Line;
   Put_Line ("********* TEST RECHERCHE DICHOTOMIQUE ");
   -- test 1 : élément existant
   x := unMot ("bille");
   rechercher_Par_Dichotomie (d, x, trouve, rang);
   affichage_resultat (x, trouve, rang);
   resultat_test
     ("1 : mot existe dans le dictionnaire", trouve and rang = 30_619);
   -- test 2 : élément non existant
   x := unMot ("abcdef");
   rechercher_Par_Dichotomie (d, x, trouve, rang);
   affichage_resultat (x, trouve, rang);
   resultat_test
     ("2 : mot n'existe pas dans le dictionnaire", not trouve);
   -- test 3 : dernier élément
   x := unMot ("zythums");
   rechercher_Par_Dichotomie (d, x, trouve, rang);
   affichage_resultat (x, trouve, rang);
   resultat_test
        ("3 : dernier mot dans le dictionnaire",  trouve and rang=336532);
        -- test 4 : premier élément
   x := unMot ("a");
   rechercher_Par_Dichotomie (d, x, trouve, rang);
   affichage_resultat (x, trouve, rang);
   resultat_test
        ("4 : premier mot dans le dictionnaire",  trouve and rang=1);

   end test_recherche_dichotomique;

   -------------------------------------------
   -- test_recherche_dichotomique_recursive --
   -------------------------------------------

   procedure test_recherche_dichotomique_recursive (d : in Dictionnaire)is
      x      : Mot;
   trouve : Boolean;
      rang   : Integer;
   begin
 -- test rechercher valeur par dichotomie version récursive
   New_Line;
   Put_Line ("********* POUR ALLER PLUS LOIN");
   Put_Line ("*********   TEST RECHERCHE DICHOTOMIQUE PAR RECURSIVITE");
   -- test 1 : élément existant
   x := unMot ("bille");
   rechercher_Par_Dichotomie_Recursive (d, x, 1, d.nbMots, trouve, rang);
   affichage_resultat (x, trouve, rang);
   resultat_test
     ("1 : mot existe dans le dictionnaire", not trouve);
      --trouve and rang = 30_619);
   -- test 2 : élément non existant
   x := unMot ("abcdef");
   rechercher_Par_Dichotomie_Recursive (d, x, 1, d.nbMots, trouve, rang);
   affichage_resultat (x, trouve, rang);
   resultat_test ("2 : mot n'existe pas dans le dictionnaire", not trouve);
   -- test 3 : dernier élément
   x := unMot ("zythums");
   rechercher_Par_Dichotomie_Recursive (d, x, 1, d.nbMots, trouve, rang);
   affichage_resultat (x, trouve, rang);
   resultat_test
        ("3 : dernier mot dans le dictionnaire",  trouve and rang=336532);
        -- test 4 : premier élément
   x := unMot ("a");
   rechercher_Par_Dichotomie_Recursive (d, x, 1, d.nbMots, trouve, rang);
   affichage_resultat (x, trouve, rang);
   resultat_test
        ("4 : premier mot dans le dictionnaire",  trouve and rang=1);
      end test_recherche_dichotomique_recursive;

end paquetage_tests_recherches;
