with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

with Tableau_Caracteres ; use Tableau_Caracteres ;
with tests_rechercher_premiere_occurrence ;
--with tests_rechercher_indice_valeur_minimum ;

procedure main is
   tab : Tab_Caracteres ; -- tableau de caractères
   n : Integer ; -- nombre d’éléments du tableau

begin
   -- test FORMAT 1
   new_line;
   put_line ("Test format 1");
   -- rentre des valeurs dans le tableau
   lireFormat1 (tab, n);
   -- affiche les éléments du tableau
   ecrire (tab, n);

   -- test FORMAT 2
   new_line;
   put_line ("Test format 2");
   -- rentre des valeurs dans le tableau
   lireFormat2 (tab, n);
   -- affiche les éléments du tableau
   ecrire (tab, n);

   -- test FORMAT 3
   New_Line;
   put_line ("Test format 3a");
   -- rentre des valeurs dans le tableau
   lireFormat3a (tab, n);
   -- affiche les éléments du tableau
   ecrire (tab, n);

   -- test FORMAT 3b
   new_line;
   put_line ("Test format 3b");
   -- rentre des valeurs dans le tableau
   lireFormat3b (tab, n);
   -- affiche les éléments du tableau
   ecrire (tab, n);

   -- Tests levées exception écrire
   -- ecrire (tab, 0);
   -- ecrire (tab, TAILLE_MAX + 1);

   -- Tests recherche 1ere occurrence
   -- tests_rechercher_premiere_occurrence;

   -- Tests recherche indice de la valeur minimum
   -- tests_rechercher_indice_valeur_minimum;

exception
   when DEBORDEMENT =>
      put ("trop de valeurs à lire !") ;
   when TRANCHE_INVALIDE =>
      put ("tranche de tableau incorrecte !") ;

end main;
