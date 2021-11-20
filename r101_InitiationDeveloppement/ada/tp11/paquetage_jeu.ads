with paquetage_dictionnaire; use paquetage_dictionnaire;
with paquetage_Mot ; use paquetage_Mot ;

package paquetage_jeu  is

   -- Construire le tableau motsTrouves
      -- en recherchant dans le dictionnaire dico
      -- tous les mots qu'il est possible de construire
      -- par concatenation des racines de 3 lettres
      -- qui se trouvent dans la grille
   procedure construire_mots (grille : in dictionnaire ; dico : in dictionnaire ; mots_a_trouver : out dictionnaire) ;

   -- retourne VRAI si tous mots qui se trouvent dans le dictionnaire d1
   -- se trouvent aussi dans le dictionnaire d2
   -- et FAUX sinon
   function dictionnaire_inclus (d1 : in dictionnaire ; d2 : dictionnaire)
                                 return Boolean;

   -- retourne VRAI si tous mots qui se trouvent dans le dictionnaire d1
   -- se trouvent aussi dans le dictionnaire d2
   -- et si tous les mots qui se trouvent dans d2 se trouvent aussi dans
   -- le dictionnaire d1
   -- et FAUX sinon
   function dictionnaires_egaux (d1 : in dictionnaire ; d2 : dictionnaire)
                                  return Boolean;

end paquetage_jeu ;
