with Ada.Text_IO; use Ada.Text_IO;

package body tests_TAD_Compteur is

   --------
   -- P1 --
   --------

   procedure P1 is
      c : compteur;
   begin
      c := unCompteur;
         Put ("La propriété P1 qui vérifie que la valeure du compteur crée est 0");
   if valeur(c) = 0 then
        Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P1;

   --------
   -- P2a --
   --------

   procedure P2a is
      c : compteur;
   begin
      c := unCompteur;
      c := ajouterUn (c);
     Put ("La propriété P2a qui vérifie que la valeur du compteur est 1");
   if valeur(c) = 1 then
        Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P2a;

   --------
   -- P2b --
   --------

   procedure P2b is
      c : compteur;
   begin
      c := unCompteur;
      for i in 1 .. 10 loop
         c := ajouterUn (c);
      end loop;
     Put ("La propriété P2b qui vérifie que la valeure du compteur est O");
    if valeur(c) = 0 then
         Put_Line ("OK");
      else
         Put_Line ("KO");
     end if;
   end P2b;

   --------
   -- P3 --
   --------

   procedure P3 is
      c : compteur;
   begin
      c := unCompteur;
      for i in 1 .. 10 loop
         c := ajouterUn (c);
      end loop;
      c := remettreAZero (c);
      Put ("La propriété P3 qui vérifie que la valeure du compteur est O");
   if valeur(c) = 0 then
         Put_Line ("OK");
      else
         Put_Line ("KO");
     end if;
   end P3;

end tests_TAD_Compteur;
