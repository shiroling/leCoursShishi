-- TAD Pile Entier
with Ada.Text_IO; use Ada.Text_IO;
with TAD_Pile;    use TAD_Pile;

package body a_tester is

   -------------
   -- test_P1 --
   -------------
   function test_P1 return Boolean is
      p : Pile;
   begin
      p := construirePile;
      return estVide (p);
   end test_P1;

   ----------------
   -- test_P2 --
   ----------------
   function test_P2 return Boolean is
      p : Pile;
   begin
      p := construirePile;
      p := empile (p, 10);
      return not (estVide (p));
   end test_P2;

   ----------------
   -- test_P3 --
   ----------------
   function test_P3 return Boolean is
      p : Pile;
   begin
      p := construirePile;
      p := empile (p, 10);
      return dernier (p) = 10;
   end test_P3;

   ---------------
   -- test_P4 --
   ---------------
   function test_P4a return Boolean is
      p : Pile;
   begin
      p := construirePile;
      p := empile (p, 10);
      p := depile (p);
      return estVide (p);
   end test_P4a;

   function test_P4b return Boolean is
      p : Pile;
   begin
      p := construirePile;
      p := empile (p, 10);
      p := empile (p, 12);
      p := depile (p);
      return dernier (p) = 10;
   end test_P4b;

   -------------------------------------------
   -- test_Exception_Pile_Pleine --
   -------------------------------------------
   function test_exception_Pile_Pleine return Boolean is
      p : Pile;
   begin
      p := construirePile;
      for i in 1 .. TAILLE_MAX + 1 loop
         p := empile (p, i + 10);
      end loop;
      return False;
   exception
      when PILE_PLEINE =>
         return True;
      when others =>
         return False;
   end test_exception_Pile_Pleine;

   -------------------------------------------
   -- test_Exception_Pile_Vide  --
   -------------------------------------------
   function test_exception_Pile_Videa return Boolean is
      p : Pile;
      i : Integer;
   begin
      p := construirePile;
      i := dernier (p);
      return False;
   exception
      when PILE_VIDE =>
         return True;
      when others =>
         return False;
   end test_exception_Pile_Videa;

   function test_exception_Pile_Videb return Boolean is
      p : Pile;
   begin
      p := construirePile;
      p := depile (p);
      return False;
   exception
      when PILE_VIDE =>
         return True;
      when others =>
         return False;
   end test_exception_Pile_Videb;

end a_tester;
