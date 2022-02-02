pragma Ada_2012;
package body TAD_pile is

   --------------
   -- CreePile --
   --------------

   function construirePile return Pile is
      P : Pile;
   begin
      P.nbElements := 0;
      return P;
   end construirePile;

   -------------
   -- Empiler --
   -------------

   function empile (P : in Pile; e : in Integer) return Pile is
      p2:Pile;
      i:Integer;
   begin

      if P.nbElements = TAILLE_MAX then
         raise PILE_PLEINE;
      end if;

      i:=0;
      p2.nbElements         := P.nbElements + 1;
      while i < P.nbElements loop
         p2.tab:=P.tab;
         i:=i+1;
      end loop;
      p2.tab(P.nbElements+1) := e;
      return p2;
   end empile;

   ----------------
   -- Desempiler --
   ----------------

   function depile (P : in Pile) return Pile is
      p2:Pile;
      i:Integer;
   begin
      if P.nbElements = 0 then
         raise PILE_VIDE;
      end if;
      p2.nbElements := P.nbElements - 1;
         i:=0;
      while i <=  P.nbElements-1 loop
         p2.tab:=P.tab;
         i:=i+1;
      end loop;

      return p2;
   end depile;

   ------------
   -- Sommet --
   ------------

   function dernier (P : in Pile) return Integer is
   begin
      if P.nbElements = 0 then
         raise PILE_VIDE;
      end if;
      return P.tab (P.nbElements);
   end dernier;

   -------------
   -- estVide --
   -------------

   function estVide (P : in Pile) return Boolean is
   begin
      if P.nbElements = 0 then
         return True;
      else
         return False;
      end if;

   end estVide;

end TAD_pile;
