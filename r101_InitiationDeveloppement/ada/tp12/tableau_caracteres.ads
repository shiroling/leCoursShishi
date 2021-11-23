package tableau_Caracteres is

   -- Exceptions
   TRANCHE_INVALIDE : exception;
   DEBORDEMENT : exception;

   -- Structure de données
   TAILLE_MAX : constant Integer := 100;
   type Tab_Caracteres is array (1 .. TAILLE_MAX) of Character;

   -- affiche les n éléments du tableau tab
   -- nécessite 0 < n <= TAILLE_MAX
   -- léve l'exception TRANCHE_INVALIDE si n<1 ou n > TAILLE_MAX
   procedure ecrire (tab : in Tab_Caracteres; n : in Integer);

   -- insère une valeur v dans le tableau tab de n éléments triés
   -- par ordre croissant nécessite 0 < n < TAILLE-MAX entraine tab
   -- est toujours trié par ordre croissant et n = n + 1 lève
   -- l’exception TRANCHE_INVALIDE si n < 0 ou n >= TAILLE_MAX
   procedure inserer_valeur
     (tab : in out Tab_Caracteres; n : in out Integer; v : in Character);

   -- tri par insertion le tableau tab d'une suite de n valeurs entraine
   -- pour tout i variant de 1 Ã n, tab(i) <= tab(i+1) nécessite 0 <
   -- n <= TAILLE-MAX lève l'exception TRANCHE_INVALIDE
   -- si n < 0 ou n > TAILLE_MAX
   procedure trier_Tableau_Par_Insertion
     (tab : in out Tab_Caracteres; n : in Integer);

end tableau_Caracteres;
