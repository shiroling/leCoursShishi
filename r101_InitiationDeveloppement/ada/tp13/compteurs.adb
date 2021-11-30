package body Compteurs is

   procedure Raz (C : out Compteur) is
   begin
      C := 0;
   end Raz;

   procedure Incr (C : in out Compteur; Val : in Positive := 1) is
   begin
      C := C + Compteur(Val);
   end Incr;

   function Valeur (C : Compteur) return Natural is
   begin
      return Natural(C);
   end Valeur;

end Compteurs;
