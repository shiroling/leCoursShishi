with Tableau_Caracteres;  use Tableau_Caracteres;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure tests_rechercher_premiere_occurrence is

   -- affichage resultat
   procedure affichage_resultat
     (trouve : in Boolean; rang : in Integer; test : in Boolean)
   is
   begin
      if trouve then
         Put ("*** valeur trouvee au rang ");
         Put (rang, 0);
      else
         Put ("*** valeur non trouvee");
      end if;
      New_Line;
      if test then
         Put_Line ("Test validé");
      else
         Put_Line ("test non validé");
      end if;
      New_Line;
   end affichage_resultat;

   -- proramme de tests

   tabValeurs : Tab_Caracteres;
   n          : Integer;
   trouve     : Boolean;
   rang       : Integer;

begin
   -- affichage initial
   New_Line;
   put_line("**********************************************");
   put_line("*** Tests rechercher premiere occurrence   ***");
   put_line("**********************************************");
   -- remplissage du tableau
   n                   := 7;
   tabValeurs (1 .. 7) := ('a', 'c', 'b', 'e', 'g', 'b', 'f');
   -- tests
   New_Line;
   -- test n°1
   Put_Line ("test n°1 : rechercher le premier element, ie a");
   rechercher_Occurrence (tabValeurs, n, 'a', trouve, rang);
   affichage_resultat (trouve, rang, trouve and rang = 1);
   -- test n°2
   Put_Line ("test n°2 : rechercher le dernier element, ie f");
   rechercher_Occurrence (tabValeurs, n, 'f', trouve, rang);
   affichage_resultat (trouve, rang, trouve and rang = 7);
   -- test n°3
   Put_Line ("test n°3 : rechercher un element qui apparait deux fois, ie b");
   rechercher_Occurrence (tabValeurs, n, 'b', trouve, rang);
   affichage_resultat (trouve, rang, trouve and rang = 3);
   -- test n°4
   Put_Line ("test n°4 : rechercher un element qui n'est pas dans la tableau");
   rechercher_Occurrence (tabValeurs, n, 'y', trouve, rang);
   affichage_resultat (trouve, rang, not trouve);
   --  -- test n°5
   --  Put_Line ("test n°5 : levee d'exception, n=0");
   --  rechercher_Occurrence (tabValeurs, 0, 'a', trouve, rang);
   --  affichage_resultat (trouve, rang, not trouve);
   --  -- test n°6
   --  Put_Line ("test n°6 : levee d'exception, n> TAILLE_MAX");
   --  rechercher_Occurrence (tabValeurs, TAILLE_MAX+1, 'a', trouve, rang);
   --  affichage_resultat (trouve, rang, not trouve);
   --
end tests_rechercher_premiere_occurrence;
