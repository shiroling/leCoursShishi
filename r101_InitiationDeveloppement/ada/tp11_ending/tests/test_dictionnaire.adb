with Ada.Text_IO;                use Ada.Text_IO;
with Ada.Integer_Text_IO;        use Ada.Integer_Text_IO;
with paquetage_dictionnaire;     use paquetage_dictionnaire;
with paquetage_tests_recherches; use paquetage_tests_recherches;

procedure test_dictionnaire is

   d : dictionnaire (400_000);

begin
   test_remplir_tableau (d);
   test_recherche_sequentielle (d);
   test_recherche_dichotomique (d);
   --test_recherche_dichotomique_recursive (d);

   -- faire des comparaison en jouant
   New_Line;

exception
   when ERREUR_OUVERTURE_FICHIER =>
      Put_Line ("Erreur dans l'ouverture du fichier dictionnaire");

end test_dictionnaire;
