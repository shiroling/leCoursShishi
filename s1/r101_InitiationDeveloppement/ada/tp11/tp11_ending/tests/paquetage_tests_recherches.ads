with paquetage_dictionnaire ; use paquetage_dictionnaire;

package paquetage_tests_recherches is
   procedure test_remplir_tableau(d : out Dictionnaire);
   procedure test_recherche_sequentielle(d : in Dictionnaire);
   procedure test_recherche_dichotomique(d : in Dictionnaire);
   procedure test_recherche_dichotomique_recursive(d : in Dictionnaire);
end paquetage_tests_recherches;
