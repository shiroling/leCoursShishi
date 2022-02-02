
package Tableau_Caracteres is

   DEBORDEMENT : exception;
   TRANCHE_INVALIDE : exception;

   TAILLE_MAX : constant Integer := 6;
   type Tab_Caracteres is array (0 .. TAILLE_MAX) of Character;

   -- lit n entiers et les place séquentiellement dans le tableau tab
   -- entraine 0 <= n <=TAILLE_MAX
   -- lève l’exception DEBORDEMENT si plus de TAILLE_MAX entiers sont entrés
   procedure lireFormat1 (tab : out Tab_Caracteres; n : out Integer);

   -- lit n entiers et les place séquentiellement dans le tableau tab
   -- entraine 0 <= n <=TAILLE_MAX
   -- lève l’exception DEBORDEMENT si plus de TAILLE_MAX entiers sont entrés
   procedure lireFormat2 (tab : out Tab_Caracteres; n : out Integer);

   -- lit n entiers et les place séquentiellement dans le tableau tab
   -- entraine 0 <= n <=TAILLE_MAX
   -- lève l’exception DEBORDEMENT si plus de TAILLE_MAX entiers sont entrés
   procedure lireFormat3a (tab : out Tab_Caracteres; n : out Integer);

   -- lit n entiers et les place séquentiellement dans le tableau tab
   -- entraine 0 <= n <=TAILLE_MAX
   -- lève l’exception DEBORDEMENT si plus de TAILLE_MAX entiers sont entrés
   procedure lireFormat3b (tab : out Tab_Caracteres; n : out Integer);

   -- affiche les n éléments du tableau tab
   -- nécessite 0 <= n <= TAILLE_MAX
   -- lève l’exception TRANCHE_INVALIDE si n<=0 ou n > TAILLE_MAX
   procedure ecrire (tab : in Tab_Caracteres; n : in Integer);

   -- cherche une occurence parmi n elements d'un tableau
   -- nécesite 0 < n <= TAILLE_MAX
   procedure rechercher_occurrence(tab: in Tab_Caracteres; n:in integer; x:in Character;
                                  trouve: out boolean; rang: out integer);

   function indice_valeur_Minimum(tab: in Tab_Caracteres; n: in Integer) return Integer;

end Tableau_Caracteres;
