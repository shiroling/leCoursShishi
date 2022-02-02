with paquetage_Mot; use paquetage_Mot;

package TAD_Dictionnaire is

   -- exceptions
   ERREUR_OUVERTURE_FICHIER : exception;
   TRANCHE_INVALIDE         : exception;
   DEBORDEMENT       : exception;
   DICTIONNAIRE_VIDE : exception;
   MOT_DEJA_PRESENT  : exception;
   MOT_NON_PRESENT   : exception;

   TAILLE_MAX : constant integer := 100;
   type TYPE_DICTIONNAIRE is private;

   -- construit un dictionnaire vide
   function construireDictionnaire return TYPE_DICTIONNAIRE;

   -- ajoute le mot m un au dictionnaire d
   --n�cessite mot m non pr�sent
   --l�ve l'exception MOT_DEJA_PRESENT
   procedure ajouterUnMot( d : in out TYPE_DICTIONNAIRE; m : in Mot);

   -- retourne VRAI si le dictionnaire d est vide et FAUX sinon
   procedure estVide ( d : in TYPE_DICTIONNAIRE )

   -- retourne VRAI si le mot m est contenu dans dictionnaire d et FAUX sinon
   ... A COMPLETER;

   -- retourne le nombre de mot contenus dans dictionnaire d
   ... A COMPLETER;

   -- retourne le ième mot du dictionnaire d
   -- necessite i>=0 et i<=taille(d)
   -- leve l'exception TRANCHE_INVALIDE si i<0 ou i>taille(d)
   ... A COMPLETER;

   -- supprime le mot m du dictionnaire d
   ... A COMPLETER;

     -- recopie dans d tous les enregistrements du fichier de nom f
     procedure remplir (f : in String; d : out Type_Dictionnaire);
   --
   --     -- recherche le premier élément de valeur x dans le tableau tab de n
   --  -- éléments
   --  -- si l'élément existe, trouvé = VRAI et rang désigne sa
   --  -- position dans le tableau tab, sinon trouvé = FAUX et rang n'est pas
   --  -- significatif nécessite 0 < n <= TAILLE_MAX leve l’exception
   --  -- TRANCHE_INVALIDE si n<0 ou n>TAILLE_MAX
     procedure rechercher_Occurrence
       (d      : in     Type_Dictionnaire ; x : in mot;
        trouve :    out Boolean; rang : out Integer);
   --
   --  -- recherche par dichotomie un élément de valeur x dans le dictionnaire d
   --  -- si l'élément existe, trouvé = VRAI et rang désigne sa
   --  -- position dans le tableau tab, sinon trouvé = FAUX et rang n'est pas
   --  -- significatif nécessite 0 < n <= TAILLE_MAX leve l’exception
   --  -- TRANCHE_INVALIDE si n<0 ou n>TAILLE_MAX
   procedure rechercher_Par_Dichotomie
      (d      : in     Type_Dictionnaire ; x : in Mot;
       trouve :    out Boolean; rang : out Integer);

   --  -- recherche récusivement par dichotomie
   --  -- un élément de valeur x dans le dictionnaire d de iDeb à iFin
   --  -- si l'élément existe, trouvé = VRAI et rang désigne sa
   --  -- position dans le tableau tab, sinon trouvé = FAUX et rang n'est pas
   --  -- significatif nécessite 0 < n <= TAILLE_MAX leve l’exception
   --  -- TRANCHE_INVALIDE si n<0 ou n>TAILLE_MAX
   procedure rechercher_Par_Dichotomie_Recursive
          (d    : in Type_Dictionnaire; x : in Mot; iDebut : in Integer;
           iFin : in Integer ; trouve : out Boolean; rang :    out Integer);
   --  -- recherche par hachage
   --  -- un élément de valeur x dans le dictionnaire d
   --  -- si l'élément existe, trouvé = VRAI et rang désigne sa
   --  -- position dans le tableau tab, sinon trouvé = FAUX et rang n'est pas
   --  -- significatif nécessite 0 < n <= TAILLE_MAX leve l’exception
   --  -- TRANCHE_INVALIDE si n<0 ou n>TAILLE_MAX
   procedure rechercher_Par_Hachage
       (d    : in Type_Dictionnaire; x : in Mot; trouve : out Boolean;
       rang :    out Integer);
   --
   --  -- affiche le nombre de mots du dictionnaire
   --  procedure afficher_taille (d : in Type_Dictionnaire);
   --
   --  -- affiche tous les mots du dictionnaire
   --  procedure afficher_mots (d : in Type_Dictionnaire);
   --
   --  -- affiche tous les mots du dictionnaire avec leur longueur
   --  procedure afficher_mots_avec_longueur (d : in Type_Dictionnaire);
   --
   --  -- affiche le résultat de la recherche du mot x
   --  procedure affichage_resultat
   --    (x : in Mot; trouve : in Boolean; rang : in Integer);
   --
private
   type Tab_Dictionnaire(1..TAILLE_MAX) of Mot;
   type TYPE_DICTIONNAIRE is record
      mot : Tab_Dictionnaire;
      nbmot : integer;
   end record;









end TAD_Dictionnaire;
