
with a_Tester; use a_Tester;
with tests; use tests;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure run_All_Tests is
begin
   -- execution automatique des tests
   for i in les_Tests'Range loop
      resultats(i) := les_Tests(i).function_Of_Test.all;
   end loop;

   -- affichage des resultats
   if (for all i in resultats'Range => resultats(i)) then
      put_line ("Tous les tests sont OK");
   else
      put_line ("***** ATTENTION *****");
      for i in resultats'Range loop
         if not resultats(i) then
            put_line (to_String(les_Tests(i).error_Test));
         end if;
      end loop;
   end if;
end run_All_Tests;
