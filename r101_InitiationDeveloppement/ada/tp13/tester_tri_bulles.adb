with Ada.Float_Text_Io, Ada.Text_Io, Tableau, tris;
use Ada.Float_Text_Io, Ada.Text_Io, Tableau, tris;

procedure Tester_Tri_Bulles is
   T  : Tablo (1..20); -- le tableau � trier
   Lg : Natural; -- le nombre de r�els � trier
begin
   Put_Line ("Entrer le tableau");
   Lire (T, Lg);
   Trier_Bulles (T (T'First..Lg));
   Put_Line ("Le tableau tri� est :");
   for I in T'First..Lg loop
      Put (T(I), 5, 2, 0);
   end loop;
   New_Line;
end Tester_Tri_Bulles;
