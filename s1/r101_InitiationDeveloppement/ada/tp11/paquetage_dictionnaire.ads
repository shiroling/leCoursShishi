with paquetage_Mot ; use paquetage_Mot;

package paquetage_dictionnaire is

   -- exceptions
   ERREUR_OUVERTURE_FICHIER : exception;
   TRANCHE_INVALIDE         : exception;

   -- type dictionnaire
   -- TAILLE_MAX : constant Integer := 400_000;
   type tab_dictionnaire is array (positive range <>) of Mot;
  
   type dictionnaire (taille_dictionnaire : natural) is record
      mots : tab_dictionnaire (1..taille_dictionnaire);
      nbMots   : Integer;
   end record;

   -- recopie dans d tous les enregistrements du fichier de nom f
   procedure remplir (f : in String; d : out dictionnaire);

   -- recherche le premier élément de valeur x dans le tableau tab de n
   -- éléments
   -- si l'élément existe, trouvé = VRAI et rang désigne sa
   -- position dans le tableau tab, sinon trouvé = FAUX et rang n'est pas
   -- significatif nécessite 0 < n <= TAILLE_MAX leve l’exception
   -- TRANCHE_INVALIDE si n<0 ou n>TAILLE_MAX
   procedure rechercher_Occurrence
     (d      : in     dictionnaire ; x : in mot;
      trouve :    out Boolean; rang : out Integer);

   -- recherche par dichotomie un élément de valeur x dans le dictionnaire d
   -- si l'élément existe, trouvé = VRAI et rang désigne sa
   -- position dans le tableau tab, sinon trouvé = FAUX et rang n'est pas
   -- significatif nécessite 0 < n <= TAILLE_MAX leve l’exception
   -- TRANCHE_INVALIDE si n<0 ou n>TAILLE_MAX
   procedure rechercher_Par_Dichotomie
     (d      : in     dictionnaire ; x : in Mot;
      trouve :    out Boolean; rang : out Integer);

   -- recherche récusivement par dichotomie
   -- un élément de valeur x dans le dictionnaire d de iDeb à iFin
   -- si l'élément existe, trouvé = VRAI et rang désigne sa
   -- position dans le tableau tab, sinon trouvé = FAUX et rang n'est pas
   -- significatif nécessite 0 < n <= TAILLE_MAX leve l’exception
   -- TRANCHE_INVALIDE si n<0 ou n>TAILLE_MAX
   procedure rechercher_Par_Dichotomie_Recursive
        (d    : in dictionnaire; x : in Mot; iDebut : in Integer;
         iFin : in Integer ; trouve : out Boolean; rang :    out Integer);

   -- recherche par hachage
   -- un élément de valeur x dans le dictionnaire d
   -- si l'élément existe, trouvé = VRAI et rang désigne sa
   -- position dans le tableau tab, sinon trouvé = FAUX et rang n'est pas
   -- significatif nécessite 0 < n <= TAILLE_MAX leve l’exception
   -- TRANCHE_INVALIDE si n<0 ou n>TAILLE_MAX
   procedure rechercher_Par_Hachage
        (d    : in dictionnaire; x : in Mot; trouve : out Boolean; rang :    out Integer);

   -- affiche le nombre de mots du dictionnaire
   procedure afficher_taille (d : in dictionnaire);

   -- affiche tous les mots du dictionnaire
   procedure afficher_mots (d : in dictionnaire);

   -- affiche tous les mots du dictionnaire avec leur longueur
   procedure afficher_mots_avec_longueur (d : in dictionnaire);

   -- affiche le résultat de la recherche du mot x
   procedure affichage_resultat
     (x : in Mot; trouve : in Boolean; rang : in Integer);

end paquetage_dictionnaire;
