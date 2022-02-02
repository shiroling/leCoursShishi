with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with paquetage_Mot;       use paquetage_Mot;

package body paquetage_tests_mot is

   procedure resultat_test
     (m1 : in Mot; m2 : in Mot; libelle : in String; test : in Boolean)
   is
   begin
      New_Line;
      afficher_mot_avec_longueur (m1);
      Put (" VS ");
      afficher_mot_avec_longueur (m2);
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

   -------------------
   -- testAffichage --
   -------------------

   procedure testAffichage is
      a : Mot;
   begin
      -- affichage d'un mot
      New_Line;
      Put_Line ("********* TEST AFFICHAGE MOT ");
      a := unMot ("Toto");
      afficher_mot (a);
      New_Line;
   end testAffichage;

   -------------------------------
   -- testAffichageAvecLongueur --
   -------------------------------

   procedure testAffichageAvecLongueur is
      a : Mot;
   begin
      a := unMot ("Toto");
      afficher_mot_avec_longueur (a);
      New_Line;
   end testAffichageAvecLongueur;

   --------------
   -- testEgal --
   --------------

   procedure testEgal is
      a : Mot;
      b : Mot;
   begin
      a := unMot ("Toto");
      New_Line;
      Put_Line ("********* TEST EGALITE MOT ");
      -- test n°1 : égalité de de deux mots
      b := unMot ("Toto");
      resultat_test (a, b, "1 mot1 = mot2", egal (a, b));
      -- test n°2 : deux mots différents, même longueur
      b := unMot ("Titi");
      resultat_test (a, b, "2 mot1 /= mot2 - meme longueur", not egal (a, b));
      -- test n°3 : deux mots différents, longueur(m2) > longueur(m1)
      b := unMot ("Tititi");
      resultat_test
        (a, b, "3 mot1 /= mot2 - longueur(m2) > longueur(m1)",
         not egal (a, b));
      -- test n°4 : deux mots différents, longueur(m1) > longueur(m2)
      b := unMot ("Tit");
      resultat_test
        (a, b, "4 mot1 /= mot2 - longueur(m2) > longueur(m1)",
         not egal (a, b));
      -- test n°5 : m1 inclus dans m2
      b := unMot ("Tototo");
      resultat_test
        (a, b, "5 mot1 inclus dans mot2 - longueur(m2) > longueur(m1)",
         not egal (a, b));
      -- test n°6 : m2 inclus dans m1
      b := unMot ("Tot");
      resultat_test
        (a, b, "6 mot2 inclus dans mot1 - longueur(m2) < longueur(m1)",
         not egal (a, b));
   end testEgal;

   -------------
   -- testInf --
   -------------

   procedure testInf is
      a : Mot;
      b : Mot;
   begin
      a := unMot ("Toto");
      -- test inférieur
      New_Line;
      Put_Line ("********* TEST INF MOT ");
      -- test n°1 : égaux
      b := unMot ("Toto");
      resultat_test (a, b, "1 mot1 = mot 2", not inf (a, b));
      -- test n°2 : mot1 > mot 2 même longueur
      b := unMot ("Tata");
      resultat_test (a, b, "2 mot1 > mot 2 - meme longueur", not inf (a, b));
      -- test n°3 : mot1 > mot2, longueur différentes
      b := unMot ("Tutu");
      resultat_test (a, b, "3 mot1 < mot 2 - meme longueur", inf (a, b));
      -- test n°4 : mot1 inclus dans mot2
      b := unMot ("Tototo");
      resultat_test (a, b, "4 mot1 inclus mot 2", inf (a, b));
      -- test n°5 : mot2 inclus dans mot1
      b := unMot ("Tot");
      resultat_test (a, b, "5 mot2 inclus mot 1", not inf (a, b));

      -- test n°6 : mot1 > mot2 longueur(m2) > longueur(m1)
      b := unMot ("Tititi");
      resultat_test
        (a, b, "6 mot1 > mot 2 - longueur(m2) > longueur(m1)", not inf (a, b));
      -- test n°7 : mot1 > mot2 longueur(m2) > longueur(m1)
      b := unMot ("Tit");
      resultat_test
        (a, b, "7 mot1 > mot 2 - longueur(m2) < longueur(m1)", not inf (a, b));
      -- test n°8 : mot1 < mot2 longueur(m2) > longueur(m1)
      b := unMot ("Tututu");
      resultat_test
        (a, b, "8 mot1 < mot 2 - longueur(m2) > longueur(m1)", inf (a, b));
      -- test n°9 : mot1 < mot2 longueur(m2) < longueur(m1)
      b := unMot ("Tut");
      resultat_test
        (a, b, "9 mot1 < mot 2 - longueur(m2) < longueur(m1)", inf (a, b));
   end testInf;

   -----------------------
   -- testConcatenation --
   -----------------------

   procedure testConcatenation is
      a : Mot;
      b : Mot;
      c : Mot;
   begin
      a := unMot ("Toto");
      b := unMot ("Tutiti");
      New_Line;
      Put_Line ("********* TEST CONCATENATION MOT ");
      c := concatenation (a, b);
      afficher_mot_avec_longueur (a);
      New_Line;
      afficher_mot_avec_longueur (b);
      New_Line;
      afficher_mot_avec_longueur (c);
      New_Line;
      if egal (c, unMot ("TotoTutiti")) and
        longueur (c) = longueur (a) + longueur (b)
      then
         Put_Line ("Test concaténation OK");
      else
         Put_Line ("Test concaténation KO");
      end if;
      New_Line;
   end testConcatenation;

end paquetage_tests_mot;
