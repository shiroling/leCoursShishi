package Tableau_Entiers_Tries is

   DEBORDEMENT : exception ;
   TRANCHE_INVALIDE : exception ;

   TAILLE_MAX : constant Integer := 100 ;
   type Tab_Entiers_Tries is array (1 .. TAILLE_MAX) of Integer ;

   -- lit n entiers et les placent tries par ordre croissant dans le tableau tab
   -- entraine pour tout i variant de 1 à n, tab(i) <= tab(i+1)
   -- entraine n <= TAILLE_MAX
   -- leve l exception DEBORDEMENT si plus de TAILLE_MAX entiers sont entres
   procedure lire (tab : out Tab_Entiers_Tries ; n : out Integer);

   -- affiche les n elements tries par ordre croissant du tableau tab
   -- necessite 0 <= n <= TAILLE_MAX
   -- leve l exception TRANCHE_INVALIDE si n<0 ou n > TAILLE_MAX
   procedure ecrire (tab : in Tab_Entiers_Tries ; n : in Integer);

   --Rechercher par Dicho. une valeure x dans un tab de n entier tries.
   --Si l element exciste, Trouve=Vrai et rang designe la position (index) dans tab
   --Si trouve=faux, rang est indefini
   --necessite n>0 and n<=TAILLE_MAX
   procedure rechercher_par_dichotomie(tab:in Tab_Entiers_Tries; n: in Integer; x: in Integer; trouve: out Boolean; rang: out Integer);

end Tableau_Entiers_Tries ;
