with Ada.Float_Text_IO, Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Float_Text_IO, Ada.Integer_Text_IO, Ada.Text_IO;

package body Tableau is

   ----------
   -- Lire --
   ----------

   procedure Lire (Tab : out Tablo; Dernier : out Natural) is
      Valeur_Arret : Float; -- valeur d'arrêt de la lecture
      Reel         : Float; -- une valeur de la suite
   begin
      Dernier := Tab'First - 1;
      if Tab'Length /= 0 then
         Put_Line ("Entrer la valeur d'arret : ");
         Get (Valeur_Arret);
         Put
           ("Entrer au maximum" &
            Integer'Image (Tab'Length) &
            " entiers (entrer ");
         Put (Valeur_Arret, 1, 1, 0);
         Put_Line (" pour terminer) :");
         Get (Reel);
         while Reel /= Valeur_Arret loop
            Dernier       := Dernier + 1;
            Tab (Dernier) := Reel;
            if Dernier /= Tab'Last then
               Get (Reel);
            else
               Reel := Valeur_Arret;
            end if;
         end loop;
      end if;
   end Lire;

end Tableau;
