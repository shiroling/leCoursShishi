-- bibliothèques d'entrées sorties
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
-- TAD Durée
with TAD_Duree; use TAD_Duree;
-- paquetage tests propriétés
with tests_TAD_Duree; use tests_TAD_Duree;

procedure Tests_Duree is
begin
   test_P1;
   test_P2;
   test_P3;
   test_P4a;
   test_P4b;
   test_P4c;
   test_P4d;
   test_P5a;
   test_P5a;
   test_P5b;
   test_P5c;
   test_P5d;
   test_P6a;
   test_P6b;
   test_P6c;
   test_Exception_Heure_Invalide;
   test_Exception_Minute_Invalide_a;
   test_Exception_Minute_Invalide_b;
   test_Exception_Seconde_Invalide_a;
   test_Exception_Seconde_Invalide_b;

end Tests_Duree;
