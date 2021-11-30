
with Ada.Text_IO;            use Ada.Text_IO;
with Ada.Integer_Text_IO;    use Ada.Integer_Text_IO;
with paquetage_dictionnaire; use paquetage_dictionnaire;
with paquetage_Mot;          use paquetage_Mot;

procedure test_dictionnaire is

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

   d      : dictionnaire (14);
   x      : Mot;
   trouve : Boolean;
   rang   : Integer;

begin
   -- TEST remplir tableau dictionnaire
   New_Line;
   Put ("********* TEST REMPLISSAGE DICTIONNAIRE ");
   remplir ("./txt/dictionnaire_court.txt", d);
   afficher_taille(d);
   resultat_test("0 : taille du dictionnaire",d.nbMots=14);
   New_Line;

   -- TEST rechercher valeur séquentiellement
   New_Line;
   Put_Line ("********* TEST RECHERCHE SEQUENTIELLE ");
   -- test 1 : élément existant
   x := unMot ("abaissai");
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

end test_dictionnaire;
