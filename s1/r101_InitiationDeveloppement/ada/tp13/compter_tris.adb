with Echanger;

package body compter_tris is

   ----------------------
   -- Trier_Bulles_Cpt --
   ----------------------

   procedure Trier_Bulles_Cpt
     (T                   : in out Tablo;
      Cpt_Comp, Cpt_Affec : in out Compteur)
   is
      Dernier : Positive := T'First + 1; -- positon du dernier échange
      Trie    : Boolean  := False; -- indique si le tableau est trié
   begin
      while not Trie loop
         Trie := True;
         for J in reverse Dernier .. T'Last loop
            Incr (Cpt_Comp);
            if T (J) < T (J - 1) then
               Echanger (T (J), T (J - 1));
               Incr (Cpt_Affec, 3);
               Trie    := False;
               Dernier := J;
            end if;
         end loop;
      end loop;
   end Trier_Bulles_Cpt;

      -----------------
   -- Trier_Pivot --
   -----------------

   procedure Trier_Pivot_cpt (T : in out Tablo; Cpt_Comp, Cpt_Affec : in out Compteur) is
      I : Natural := T'First; -- tous les éléments jusqu'à i sont <= pivot
      J : Natural := T'Last; -- tous les éléments après j sont > pivot
      P : Float; -- élément pivot
   begin
      if T'Length > 1 then
         P := T (T'First);
         Incr (Cpt_Affec);
         while I < J loop
            if T (J) >= P then
               Incr (Cpt_Comp);

               J := J - 1;
            elsif T (I + 1) < P then
               Incr (Cpt_Comp, 2);

               T (I) := T (I + 1);
               Incr (Cpt_Affec);
               I     := I + 1;
            else
               Incr (Cpt_Comp);
               T (I) := T (J);
               T (J) := T (I + 1);
               I     := I + 1;
               J     := J - 1;
               Incr (Cpt_Affec, 2);
            end if;
         end loop;
         T (I) := P;   
            -- là
         Trier_Pivot_cpt (T (T'First .. I - 1), Cpt_Comp, Cpt_Affec);
         Trier_Pivot_cpt (T (I + 1 .. T'Last), Cpt_Comp, Cpt_Affec);
      end if;
   end Trier_Pivot_cpt;

   -----------------
   -- Trier_Shell --
   -----------------

   procedure Trier_Shell_cpt (T : in out Tablo; Cpt_Comp, Cpt_Affec : in out Compteur) is
      Inc : Natural := T'Length / 2;
      J   : Integer;
   begin
      while Inc > 0 loop
         for I in Inc + 1 .. T'Last loop
            Incr (Cpt_Comp);
            J := I - Inc;
            while J > 0 loop
               if T (J) > T (J + Inc) then
                  Echanger (T (J), T (J + Inc));
                  J := J - Inc;
                  Incr (Cpt_Affec, 3);
               else
                  J := 0;
               end if;
               Incr (Cpt_Comp, 2);
            end loop;
         end loop;
         Inc := Inc / 2;
      end loop;
   end Trier_Shell_cpt;


   procedure tri_insertion_cpt(T : in out Tablo; Cpt_Comp, Cpt_Affec : in out Compteur) is
      temp: Float;
      j: Integer;

      begin
         for i in 1 ..  T'Length-1 loop
            Incr (Cpt_Comp);
            temp:= T(i);         --là
            Incr (Cpt_Affec);

            j:=i;
            while j > 1 and then T(j-1) > temp loop
               Incr (Cpt_Comp);
               T(j):= T(j-1);
               Incr (Cpt_Affec);
               j:= j-1;
            end loop;

            T(j):= temp;
            Incr (Cpt_Affec);
         end loop;
      end tri_insertion_cpt;

end compter_tris;
