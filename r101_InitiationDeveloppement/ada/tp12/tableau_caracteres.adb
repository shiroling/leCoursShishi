pragma Ada_2012;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body tableau_Caracteres is


   ------------
   -- ecrire --
   ------------

    procedure ecrire (tab : in Tab_Caracteres; n : in Integer) is
   begin
      -- exceptions
      if n < 0 or n > TAILLE_MAX then
         raise TRANCHE_INVALIDE;
      end if;
      -- tableau vide
      if n=0 then
         put_line ("Le tableau est vide");
      else
     -- affichage des valeurs
      put_line("Les valeurs du tableau sont :");
      for i in 1 .. n loop
         put(" valeur ");
         put(i,0);
         put(" : ");
         Put (tab (i));
         New_Line;
      end loop;
      end if;
    end ecrire;

   --------------------
   -- Inserer_valeur --
   --------------------

   procedure inserer_valeur (tab : in out Tab_Caracteres ; n : in out integer;
              v   : in Character)
   is
      i : Integer;
   begin
      i:= n;
      while i>=1  and then tab(i)>v loop
         tab(i+1):= tab(i);
         i:= i-1;
      end loop;

      tab(i+1):= v;
      n:= n+1;
   end inserer_valeur;

   ---------------------------------
   -- trier_Tableau_Par_Insertion --
   ---------------------------------

   procedure trier_Tableau_Par_Insertion
     (tab : in out Tab_Caracteres; n : in Integer)
   is
      v : Character ;  	-- valeur courante 
      i : Integer ;	-- indice de parcours de la tranche tab(1..k-1)
   begin

      if n<0 or n>TAILLE_MAX-1 then
         raise TRANCHE_INVALIDE;
      end if;


      for j in 1..n loop
         v:= tab(j);

         i:=j;
         while i > 0 AND then tab(i-1) > v loop
            tab(i):= tab(i-1);
            i:=i-1;
         end loop;
         
         tab(i) := v;
      end loop;
   end trier_Tableau_Par_Insertion;


end tableau_Caracteres;
