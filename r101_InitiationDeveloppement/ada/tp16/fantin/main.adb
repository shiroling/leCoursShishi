-- bibliothèques standards
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
-- TAD Pile Entier
with TAD_Pile; use TAD_Pile;

procedure main is
   p1 : Pile;
   p2 : Pile;
   val : integer ;
begin
   -- construction et empilement de valeurs dans p1
   p1 := construirePile;
   for i in 1 .. 10 loop
      p1 := empile (p1, i);
   end loop;
   -- construction est recopie de p1 dans p2
   p2 := construirePile;
   p2 := p1;
   -- cimparaison des deux piles
   if p1 = p2 then
      put_line ("Les deux piles sont égales");
   else
      Put_Line ("Les deux piles sont différentes");
   end if;
   -- dépilement et affichage des valeurs de p2
   for i in 1 .. 10 loop
      val := dernier(p2);
      put("val = "); put(val,0) ; new_line ;
      p2 := depile (p2);
   end loop;
end main;
