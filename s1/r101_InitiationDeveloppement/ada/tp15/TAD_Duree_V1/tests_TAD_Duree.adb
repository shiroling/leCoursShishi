-- bibliothÃ¨ques d'entrÃ©es sorties
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body tests_TAD_Duree  is

   -------------
   -- test_P1 --
   -------------
   -- On s'assure que l'élément a été crée avec la bonne heure
   procedure test_P1 is
      d : Duree;
   begin
      d := uneDuree (10, 11, 12);
      if heures (d) = 10 then
         Put_line ("Propriete P1 verifiee");
      else
         Put_line ("Propriete P1 non verifiee");
      end if;
   end test_P1;

   -------------
   -- test_P2 --
   -------------
   -- On s'assure que l'élément a été crée avec la bonne valeure en minutes
   procedure test_P2 is
      d : Duree;
   begin
      d := uneDuree (10, 11, 12);
      if minutes (d) = 11 then
         Put_line ("Propriete P2 verifiee");
      else
         Put_line ("Propriete P2 non verifiee");
      end if;
   end test_P2;

   -------------
   -- test_P3 --
   -------------
   -- On s'assure que l'élément a été crée avec la bonne valeure en secondes
   procedure test_P3 is
      d : Duree;
   begin
      d := uneDuree (10, 11, 12);
      if secondes (d) = 12 then
         Put_line ("Propriete P3 verifiee");
      else
         Put_line ("Propriete P3 non verifiee");
      end if;
   end test_P3;

   -------------
   -- test_P4 --
   -------------
   -- On s'assure que la fonction "=" fonctionne correctement quand les durées sont similaires
   procedure test_P4a is
      d1 : Duree;
      d2 : Duree;
   begin
      d1 := uneDuree (10, 11, 12);
      d2 := uneDuree (10, 11, 12);
      if d1 = d2  then
         Put_line ("Propriete P4a verifiee");
      else
         Put_line ("Propriete P4a non verifiee");
      end if;
   end test_P4a;

   -------------
   -- test_P4 --
   -------------
   -- On s'assure que la fonction "=" fonctionne correctement quand les secondes des durées sont différentes
   procedure test_P4b is
      d1 : Duree;
      d2 : Duree;
   begin
      d1 := uneDuree (10, 11, 12);
      d2 := uneDuree (10, 11, 13);
      if d1 /= d2  then
         Put_line ("Propriete P4b verifiee");
      else
         Put_line ("Propriete P4b non verifiee");
      end if;
   end test_P4b;

   -------------
   -- test_P4 --
   -------------
   -- On s'assure que la fonction "=" fonctionne correctement quand les minutes des durées sont différentes
   procedure test_P4c is
      d1 : Duree;
      d2 : Duree;
   begin
      d1 := uneDuree (10, 11, 12);
      d2 := uneDuree (10, 13, 12);
      if d1 /= d2  then
         Put_line ("Propriete P4c verifiee");
      else
         Put_line ("Propriete P4c non verifiee");
      end if;
   end test_P4c;

   -------------
   -- test_P4 --
   -------------
   -- On s'assure que la fonction "=" fonctionne correctement quand les heures des durées sont différentes
   procedure test_P4d is
      d1 : Duree;
      d2 : Duree;
   begin
      d1 := uneDuree (10, 11, 12);
      d2 := uneDuree (13, 11, 12);
      if d1 /= d2  then
         Put_line ("Propriete P4d verifiee");
      else
         Put_line ("Propriete P4d non verifiee");
      end if;
   end test_P4d;

   -------------
   -- test_P5 --
   -------------
   -- On s'assure que la fonction "<" fonctionne correctement quand les durées sont égales
   procedure test_P5a is
      d1 : Duree;
      d2 : Duree;
   begin
      d1 := uneDuree (10, 11, 12);
      d2 := uneDuree (10, 11, 12);
      if not (d1 < d2)  then
         Put_line ("Propriete P5a verifiee");
      else
         Put_line ("Propriete P5a non verifiee");
      end if;
   end test_P5a;

   -------------
   -- test_P5 --
   -------------
   -- On s'assure que la fonction "<" fonctionne correctement quand les secondes sont différentes
   procedure test_P5b is
      d1 : Duree;
      d2 : Duree;
   begin
      d1 := uneDuree (10, 11, 12);
      d2 := uneDuree (10, 11, 13);
      if d1 < d2  then
         Put_line ("Propriete P5b verifiee");
      else
         Put_line ("Propriete P5b non verifiee");
      end if;
   end test_P5b;

   -------------
   -- test_P5 --
   -------------
   --    -- On s'assure que la fonction "<" fonctionne correctement quand les minutes sont différentes
   procedure test_P5c is
      d1 : Duree;
      d2 : Duree;
   begin
      d1 := uneDuree (10, 11, 12);
      d2 := uneDuree (10, 13, 12);
      if d1 < d2  then
         Put_line ("Propriete P5c verifiee");
      else
         Put_line ("Propriete P5c non verifiee");
      end if;
   end test_P5c;

   -------------
   -- test_P5 --
   -------------
   -- On s'assure que la fonction "<" fonctionne correctement quand les heures sont différentes
   procedure test_P5d is
      d1 : Duree;
      d2 : Duree;
   begin
      d1 := uneDuree (10, 11, 12);
      d2 := uneDuree (13, 11, 12);
      if d1 < d2  then
         Put_line ("Propriete P5d verifiee");
      else
         Put_line ("Propriete P5d non verifiee");
      end if;
   end test_P5d;

   -------------
   -- test_P6 --
   -------------
   -- On s'assure que l'ajout d'une seconde fonctionne quand s /=59
   procedure test_P6a is
      d1 : Duree;
      d2 : Duree;
   begin
      d1 := uneDuree (10, 11, 12);
      d2 := uneDuree (10, 11, 13);
      plusUneSeconde(d1);
      if d1 = d2  then
         Put_line ("Propriete P6a verifiee");
      else
         Put_line ("Propriete P6a non verifiee");
      end if;
   end test_P6a;

   -------------
   -- test_P6 --
   -------------
   -- On s'assure que l'ajout d'une seconde fonctionne quand s= 59
   procedure test_P6b is
      d1 : Duree;
      d2 : Duree;
   begin
      d1 := uneDuree (10, 11, 59);
      d2 := uneDuree (10, 12, 0);
      plusUneSeconde(d1);
      if d1 = d2  then
         Put_line ("Propriete P6b verifiee");
      else
         Put_line ("Propriete P6b non verifiee");
      end if;
   end test_P6b;

   -------------
   -- test_P6 --
   -------------
   -- On s'assure que l'ajout d'une seconde fonctionne quand s= 59 ET m= 59
   procedure test_P6c is
      d1 : Duree;
      d2 : Duree;
   begin
      d1 := uneDuree (10, 59, 59);
      d2 := uneDuree (11, 0, 0);
      plusUneSeconde(d1);
      if d1 = d2  then
         Put_line ("Propriete P6c verifiee");
      else
         Put_line ("Propriete P6c non verifiee");
      end if;
   end test_P6c;

   -----------------------------------
   -- test_Exception_Heure_Invalide --
   -----------------------------------
   -- On vérifie que l'exeption HEURE_INVALIDE est bien levée
   procedure test_Exception_Heure_Invalide is
      d : Duree;
   begin
      d := uneDuree (-1, 11, 12);
      Put_line ("**** Exception HEURE_INVALIDE non levee");
   Exception
      when HEURE_INVALIDE =>
         Put_line ("Exception HEURE_INVALIDE levee correctement");
      when others =>
         Put_line ("**** Autre exception que HEURE_INVALIDE levee");
   end test_Exception_Heure_Invalide;

   -----------------------------------
   -- test_Exception_Minute_Invalide --
   -----------------------------------
   -- On vérifie que l'exeption MINUTE_INVALIDE est bien levée (cas m < 0)
   procedure test_Exception_Minute_Invalide_a is
      d : Duree;
   begin
      d := uneDuree (10, -1, 12);
      Put_line ("**** Exception MINUTE_INVALIDE non levee");
   Exception
      when MINUTE_INVALIDE =>
         Put_line ("Exception MINUTE_INVALIDE levee correctement");
      when others =>
         Put_line ("**** Autre exception que MINUTE_INVALIDE levee");
   end test_Exception_Minute_Invalide_a;

   -- On vérifie que l'exeption MINUTE_INVALIDE est bien levée (cas m >= 60)
   procedure test_Exception_Minute_Invalide_b is
      d : Duree;
   begin
      d := uneDuree (10, 60, 12);
      Put_line ("**** Exception MINUTE_INVALIDE non levee");
   Exception
      when MINUTE_INVALIDE =>
         Put_line ("Exception MINUTE_INVALIDE levee correctement");
      when others =>
         Put_line ("**** Autre exception que MINUTE_INVALIDE levee");
   end test_Exception_Minute_Invalide_b;

   -----------------------------------
   -- test_Exception_Seconde_Invalide --
   -----------------------------------
   -- On vérifie que l'exeption SECONDE_INVALIDE est bien levée (cas m < 0)
   procedure test_Exception_Seconde_Invalide_a is
      d : Duree;
   begin
      d := uneDuree (10, 11, -1);
      Put_line ("**** Exception SECONDE_INVALIDE non levee");
   Exception
      when SECONDE_INVALIDE =>
         Put_line ("Exception SECONDE_INVALIDE levee correctement");
      when others =>
         Put_line ("**** Autre exception que SECONDE_INVALIDE levee");
   end test_Exception_Seconde_Invalide_a;

   -- On vérifie que l'exeption MINUTE_INVALIDE est bien levée (cas m > 60)
   procedure test_Exception_Seconde_Invalide_b is
      d : Duree;
   begin
      d := uneDuree (10, 11, 60);
      Put_line ("**** Exception SECONDE_INVALIDE non levee");
   Exception
      when SECONDE_INVALIDE =>
         Put_line ("Exception SECONDE_INVALIDE levee correctement");
      when others =>
         Put_line ("**** Autre exception que SECONDE_INVALIDE levee");
   end test_Exception_Seconde_Invalide_b;

end tests_TAD_Duree ;
