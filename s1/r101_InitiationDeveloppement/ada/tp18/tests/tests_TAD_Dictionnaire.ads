with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with tests;                 use tests;
with TAD_Dictionnaire;    use TAD_Dictionnaire;
with paquetage_Mot;       use paquetage_Mot;

package tests_TAD_dictionnaire is

   function P1 return Boolean; --1
   function P2 return Boolean; --2
   function P3a return Boolean; --3
   function P3b return Boolean; --4
   function P4 return Boolean; --5
   function P5 return Boolean; --6
   function P6a return Boolean; --7
   function P6b return Boolean; --8
   function P7 return Boolean; --9
   function P8a return Boolean;--10
   function P8b return Boolean; --11
   function P9 return Boolean; --12
   function test_mot_deja_present return Boolean; --13
   function test_taille_max return Boolean; --14
   function test_dictionnaire_vide return Boolean;--15
   function test_mot_non_present return Boolean;--16
   --  function test_remplir_tableau return Boolean;--17
   --  function test_rechercher_mot_trouve return Boolean;--18
   --  function test_rechercher_mot_non_trouve return Boolean;--19
   --  function test_rechercher_par_dichotomie_mot_trouve return Boolean;--20
   --  function test_rechercher_par_dichotomie_mot_non_trouve return Boolean;--21
   --  function test_rechercher_par_dichotomie_recursive_mot_trouve return Boolean;--22
   --  function test_rechercher_par_dichotomie_recursive_mot_non_trouve return Boolean;--23
   --
   les_Tests : constant array (Positive range <>) of Test_Unitaire :=
     ((P1'Access,
       To_Unbounded_String ("echec de la propriete 1 TAD Dictionnaire")),
      (P2'Access,
       To_Unbounded_String ("echec de la propriete 2 TAD Dictionnaire")),
      (P3a'Access,
       To_Unbounded_String ("echec de la propriete 3a TAD Dictionnaire")),
      (P3b'Access,
       To_Unbounded_String ("echec de la propriete 3b TAD Dictionnaire")),
      (P4'Access,
       To_Unbounded_String ("echec de la propriete 4 TAD Dictionnaire")),
     (P5'Access,
       To_Unbounded_String ("echec de la propriete 5 TAD Dictionnaire")),
     (P6a'Access,
       To_Unbounded_String ("echec de la propriete 6a TAD Dictionnaire")),
     (P6b'Access,
       To_Unbounded_String ("echec de la propriete 6b TAD Dictionnaire")),
     (P7'Access,
       To_Unbounded_String ("echec de la propriete 7 TAD Dictionnaire")),
     (P8a'Access,
       To_Unbounded_String ("echec de la propriete 8a TAD Dictionnaire")),
     (P8b'Access,
       To_Unbounded_String ("echec de la propriete 8b TAD Dictionnaire")),
     (P9'Access,
       To_Unbounded_String ("echec de la propriete 9 TAD Dictionnaire")),
     (test_mot_deja_present'Access,
       To_Unbounded_String ("echec de la propriete test_mot_deja_present TAD Dictionnaire")),
     (test_taille_max'Access,
       To_Unbounded_String ("echec de la propriete test_taille_max TAD Dictionnaire")),
      (test_dictionnaire_vide'Access,
       To_Unbounded_String ("echec de la propriete test_dictionnaire_vide TAD Dictionnaire")),
      (test_mot_non_present'Access,
       To_Unbounded_String ("echec de la propriete test_mot_non_present TAD Dictionnaire"))
      --  ,
      --  (test_remplir_tableau'Access,
      --   To_Unbounded_String ("echec de la propriete test_remplir_tableau TAD Dictionnaire")),
      --
      --  (test_rechercher_mot_trouve'Access,
      --   To_Unbounded_String ("echec de la propriete test_rechercher_mot_trouve TAD Dictionnaire")),
      --  (test_rechercher_mot_non_trouve'Access,
      --   To_Unbounded_String ("echec de la propriete test_rechercher_mot_non_trouve TAD Dictionnaire")),
      --
      --  (test_rechercher_par_dichotomie_mot_trouve'Access,
      --   To_Unbounded_String ("echec de la propriete test_rechercher_par_dichotomie_mot_trouve TAD Dictionnaire")),
      --  (test_rechercher_par_dichotomie_mot_non_trouve'Access,
      --   To_Unbounded_String ("echec de la propriete test_rechercher_par_dichotomie_mot_non_trouve TAD Dictionnaire")),
      --
      --  (test_rechercher_par_dichotomie_recursive_mot_trouve'Access,
      --   To_Unbounded_String ("echec de la propriete test_rechercher_par_dichotomie_recursive_mot_trouve TAD Dictionnaire")),
      --  (test_rechercher_par_dichotomie_recursive_mot_non_trouve'Access,
      --   To_Unbounded_String ("echec de la propriete test_rechercher_par_dichotomie_recursive_mot_non_trouve TAD Dictionnaire"))
        );

   resultats : array (les_Tests'Range) of Boolean;



end tests_TAD_dictionnaire;
