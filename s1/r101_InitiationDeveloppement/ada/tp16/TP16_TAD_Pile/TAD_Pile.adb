with Ada.Text_IO; use Ada.Text_IO;
with ada.integer_text_io ; use ada.integer_text_io ;

package body TAD_Pile is


   --------------------
   -- construirePile --
   --------------------
   function construirePile return Pile is

      i : Integer; -- compteur de parcourir les elements de la pile
      TabP : Pile; -- la pile qui sera la return de la function

   begin

      -- saisir tout le Pile avec la valeur 0
      -- positionner sur la premiere case de la Pile
      i:=1;
      while i <= TAILLE_MAX loop
         -- saisir la case avec la valeur 0
         TabP(i):=0;
         -- passer a la case souivont
         i:=i+1;
      end loop;

      -- return la Pile finail
      return TabP;
   end construirePile;

   -------------
   -- estVide --
   -------------
   function estVide (TabP : in Pile) return Boolean is

   begin

      -- Verifier que la premiere case qui peut contenir le premier element
      -- de la pile si elle n'est pas vide
      if TabP(1) = 0 then
         -- retourne VRAI si la Pile est vide
         return True;
      else
         -- retourne FAUX si la Pile N'est PAS vide
         return False;
      end if;

   end estVide;

   ------------
   -- empile --
   ------------
   function empile (TabP : in Pile ; N : in Integer) return Pile is

      i : Integer; -- compteur de parcourir les elements de la pile
      TabF : Pile; -- la pile qui sera la return de la function

   begin

      -- construire une Pile vide
      TabF:=construirePile;

      -- parcourir le pile pour trouver la priemer case vide
      -- positionner sur la premiere case de la Pile
      i:=1;
      while TabP(i) /= 0 loop
         -- copies la case de la TabP a TabF
         TabF(i) := TabP(i);
         -- passer a la case souivont
         i:=i+1;

         -- Verifier que les element dans dans la Pile Ne depasser PAS TAILLE_MAX
         if i > TAILLE_MAX then
            raise PILE_PLEINE;
         end if;

      end loop;

      -- ajouter le nomber N dans le primer case vide apres les elements
      TabF(i):= N;

      -- return la Pile finail
      return TabF;
   end empile;

   ------------
   -- depile --
   ------------
   function depile (TabP : in Pile) return Pile is

      i : Integer; -- compteur de parcourir les elements de la pile
      TabF : Pile; -- la pile qui sera la return de la function

   begin

      -- Verifier que la Pile N'est PAS vide
      if TabP(1) = 0 then
         raise PILE_VIDE;
      end if;

      -- construire une Pile vide
      TabF:=construirePile;

      -- parcourir le pile pour trouver la priemer case vide
      -- positionner sur la premiere case de la Pile
      i:=1;
      while TabP(i) /= 0 loop
         -- copies la case de la TabP a TabF
         TabF(i) := TabP(i);
         --passer a la case souivont
         i:=i+1;
      end loop;

      -- saisir la case de la dernier ensemble ajouter(empile) avec la valeur 0
      TabF(i-1):=0;

      -- return la Pile finail
      return TabF;
   end depile;

   -------------
   -- dernier --
   -------------
   function dernier (TabP : in Pile) return Integer is

      i : Integer; -- compteur de parcourir les elements de la pile

   begin

      -- Verifier que la Pile N'est PAS vide
      if TabP(1) = 0 then
         raise PILE_VIDE;
      end if;

      -- parcourir le pile pour trouver la priemer case vide
      -- positionner sur la premiere case de la Pile
      i:=1;
      while TabP(i) /= 0 loop
         --passer a la case souivont
         i:=i+1;
      end loop;


      --return la valeur finail qui est la dernier ensemble ajouter(empile)
      return TabP(i-1);
   end dernier;

end TAD_Pile;
