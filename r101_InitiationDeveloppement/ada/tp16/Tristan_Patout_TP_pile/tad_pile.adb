package body tad_pile is

   -- Construit pile
   function construirePile return pile is
      p : pile;
   begin
      p.n := 0;
      return p;
   end construirePile;

   --Ajoute un element e a la pile p
   --N�cessite que la pile p ne soit pas pleine
   --L�ve exception PILE_PLEINE
   function empile (p : in pile; e : in Integer) return pile is
      pi : pile;
   begin
      if p.n = TAILLE_MAX then
         raise PILE_PLEINE;
      end if;
      pi            := p;
      pi.n          := pi.n + 1;
      pi.tab (pi.n) := e;
      return pi;
   end empile;

   --Enleve l'�l�ment le plus r�cent de la pile p
   --N�cessite que la pile p ne soit pas vide
   --L�ve PILE_VIDE
   function depile (p : in pile) return pile is
      pi : pile;
   begin
      if p.n = 0 then
         raise PILE_VIDE;
      end if;
      pi   := p;
      pi.n := pi.n - 1;
      return pi;
   end depile;

   --Teste si la pile p n'a pas d'�l�ment
   --Retourne vrai si vide et faux si non vide
   function estvide (p : in pile) return Boolean is
   begin
      if p.n = 0 then
         return True;
      else
         return False;
      end if;
   end estvide;

   --Retourne l'�l�ment le plus r�cent de la pile p
   --N�cessite que la pile ne soit pas vide
   --L�ve l'exception PILE_VIDE
   function dernier (p : in pile) return Integer is
   begin
      if p.n = 0 then
         raise PILE_VIDE;
      end if;
      return p.tab (p.n);
   end dernier;
end tad_pile;
