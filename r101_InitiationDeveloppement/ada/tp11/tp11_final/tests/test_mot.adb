with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with paquetage_Mot;       use paquetage_Mot;

procedure test_mot is

   procedure resultat_test
     (m1 : in Mot; m2 : in mot ; libelle : in String; test : in Boolean)
   is
   begin
      --  New_Line;
      --  afficher_mot_avec_longueur (m1);
      --  put(" VS ");
      --  afficher_mot_avec_longueur(m2);
      --  new_line;
      Put ("Test "); Put (libelle);Put (" est ");
      if test then
         Put_line ("OK");
      else
         Put_line ("KO");
      end if;
   end resultat_test;

   a : Mot;
   b : Mot;
   c : Mot;

begin

   -- affichage d'un mot
   New_Line;
   Put_Line ("********* TEST AFFICHAGE MOT ");
   a := unMot ("Toto");
   afficher_mot (a);
   New_Line;

   -- affichage d'un mot avec sa longueur
   afficher_mot_avec_longueur (a);
   New_Line;

   -- test égalité
   New_Line;
   Put_Line ("********* TEST EGALITE MOT ");
   -- test n°1 : égalité de de deux mots
   b := unMot ("Toto");
  resultat_test
     (a, b, "1 mot1 = mot2", egal (a, b));
   -- test n°2 : deux mots différents, même longueur
   b := unMot ("Titi");
   resultat_test
     (a, b, "2 mot1 /= mot2 - meme longueur", not egal(a, b));
   -- test n°3 : deux mots différents, longueur différentes
   b := unMot ("Tititi");
   resultat_test
     (a, b, "3 mot1 /= mot2 - longueurs différentes", not egal (a, b));

   -- test inférieur
   New_Line;
   Put_Line ("********* TEST INF MOT ");
   -- test n°1 : inférieur, même longueur
   b := unMot ("Toto");
   resultat_test
     (a, b, "1 mot1 = mot 2", not inf (a, b));
    -- test n°2 : supérieur, même longueur
   b := unMot ("Tata");
   resultat_test
     (a, b, "2 mot1 > mot 2 - meme longueur", not inf (a, b));
   -- test n°3 : inférieur, longueur différentes
   b := unMot ("Tutu");
     resultat_test
     (a, b, "3 mot1 < mot 2 - meme longueur", inf (a, b));
   -- test n°4 : mot1 inclus mot2
   b := unMot ("Tototo");
   resultat_test
     (a, b, "4 mot1 inclus mot 2", inf (a, b));
   -- test n°5 : mot1 > mot 2 longueurs différentes
   b := unMot ("Tititi");
   resultat_test
     (a, b, "5 mot1 > mot 2 - longueurs differentes", not inf (a, b));
   -- test n°6 : mot1 < mot 2 longueurs différentes
   b := unMot ("Tutiti");
   resultat_test
     (a, b, "6 mot1 < mot 2 - longueurs differentes", inf (a, b));

   -- test concaténation
   New_Line;
   Put_Line ("********* TEST CONCATENATION MOT ");
   c := concatenation (a, b);
   afficher_mot_avec_longueur (a); new_line;
   afficher_mot_avec_longueur (b); new_line;
   afficher_mot_avec_longueur (c); new_line;
   if egal (c, unMot ("TotoTutiti")) and
     longueur (c) = longueur (a) + longueur (b)
   then
      Put_Line ("Test concaténation OK");
   else
      Put_Line ("Test concaténation KO");
   end if;
   New_Line;
end test_mot;
