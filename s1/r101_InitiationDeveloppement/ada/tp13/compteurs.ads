package Compteurs is
   type Compteur is private;

   -- Met le compteur C à zéro
   procedure Raz (C : out Compteur);

   -- Ajoute Val (par défaut 1) au compteur C
   procedure Incr (C : in out Compteur; Val : in Positive := 1);

   -- retourne la valeur du compteur C (par exemple pour l'afficher)
   function Valeur (C : Compteur) return Natural;

private
   type Compteur is new Natural;
end Compteurs;
