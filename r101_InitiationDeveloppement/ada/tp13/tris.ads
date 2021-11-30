with Tableau; use Tableau;

package tris is

   -- tri le tableau T par la méthode des bulles
   procedure Trier_Bulles (T : in out Tablo) with
      Post => (for all i in T'First .. T'Last - 1 => T (i) <= T (i + 1));

   -- tri le tableau T par la méthode du pivot (quick sort)
   procedure Trier_Pivot (T : in out Tablo) with
      Post => (for all i in T'First .. T'Last - 1 => T (i) <= T (i + 1));

   -- tri le tableau T par la méthode shell
   procedure Trier_Shell (T : in out Tablo) with
      Post => (for all i in T'First .. T'Last - 1 => T (i) <= T (i + 1));

   -- tri le tableau T par la méthode insert
   procedure tri_insertion(T : in out Tablo) with
      Post => (for all i in T'First .. T'Last - 1 => T (i) <= T (i + 1));

end tris;
