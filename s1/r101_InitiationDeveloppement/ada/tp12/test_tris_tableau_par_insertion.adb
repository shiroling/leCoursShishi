with Ada.Text_IO;               use Ada.Text_IO;
with ada.Integer_Text_IO ; use ada.Integer_Text_IO;
with tableau_Caracteres ; use tableau_Caracteres;

procedure test_tris_tableau_par_insertion is

   -- Déclaration de variables
   tab_valeurs : Tab_Caracteres; -- tableau des valeurs
   nb_valeurs  : Natural; -- nombre de valeurs triés dans le tableau

begin
   -- TEST INSERER VALEUR
   new_line ;
   put_line("*** Test INSERER VALEUR");
   -- Tableau vide
   nb_valeurs := 0;
   ecrire(tab_valeurs,nb_valeurs);
   -- insertion de 'b'
   inserer_valeur(tab_valeurs, nb_valeurs, 'b');
   ecrire(tab_valeurs,nb_valeurs);
   -- insertion de 'a'
   inserer_valeur(tab_valeurs, nb_valeurs, 'a');
   ecrire(tab_valeurs,nb_valeurs);
   -- insertion de 'c'
   inserer_valeur(tab_valeurs, nb_valeurs, 'c');
   ecrire(tab_valeurs,nb_valeurs);
     -- insertion de 'a'
   inserer_valeur(tab_valeurs, nb_valeurs, 'a');
   ecrire(tab_valeurs,nb_valeurs);
   New_Line;

   -- TEST TRIER_TABLEAU_PAR_INSERTION
   new_line ;
   put_line("*** TRIER_TABLEAU_PAR_INSERTION");
   tab_valeurs (1..15) := ('a','a','b','f','i','n','o','p','t','z','e','f','g','h','i') ;
   nb_valeurs:=15;
   ecrire(tab_valeurs,nb_valeurs);
   trier_Tableau_Par_Insertion(tab_valeurs, nb_valeurs);
   ecrire(tab_valeurs,nb_valeurs);

exception
   when TRANCHE_INVALIDE =>
      put_line ("**** tranche invalide");
   when DEBORDEMENT =>
      Put_Line ("***** trop de valeurs Ã  trier");
end test_tris_tableau_par_insertion;
