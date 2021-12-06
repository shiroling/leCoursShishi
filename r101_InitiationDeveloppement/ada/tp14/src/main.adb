with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;

with TAD_Compteur;     use TAD_Compteur;
with TAD_CompteurKilo; use TAD_CompteurKilo;

with tests_TAD_Compteur;     use tests_TAD_Compteur;
with tests_TAD_CompteurKilo; use tests_TAD_CompteurKilo;

procedure Main is

begin
   -- tests TAD compteur
   Put_Line (" *** Tests propriétés TAD Compteur");
   tests_TAD_Compteur.P1;
   tests_TAD_Compteur.P2a;
   tests_TAD_Compteur.P2b;
   tests_TAD_Compteur.P3;
   -- tests TAD Compteur Kilo
   Put_Line (" *** Tests propriétés TAD Compteur kilometrique");
   tests_TAD_CompteurKilo.P1;
   tests_TAD_CompteurKilo.P2;
   tests_TAD_CompteurKilo.P3;
   tests_TAD_CompteurKilo.P4;
   tests_TAD_CompteurKilo.P5a;
   tests_TAD_CompteurKilo.P5b;
   tests_TAD_CompteurKilo.P5c;
   tests_TAD_CompteurKilo.P6a;
   tests_TAD_CompteurKilo.P6b;
   tests_TAD_CompteurKilo.P6c;
   tests_TAD_CompteurKilo.P7;
   tests_TAD_CompteurKilo.P8;
   tests_TAD_CompteurKilo.P9;
   tests_TAD_CompteurKilo.P10a;
   tests_TAD_CompteurKilo.P10b;
   tests_TAD_CompteurKilo.P10c;
   tests_TAD_CompteurKilo.P10d;
   tests_TAD_CompteurKilo.P11;

end Main;
