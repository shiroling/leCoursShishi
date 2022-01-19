with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with paquetage_jeu ; use paquetage_jeu;
with paquetage_Mot;  use paquetage_Mot;
with TAD_dictionnaire; use TAD_dictionnaire;
--with Gestion_dictionnaire; use Gestion_dictionnaire;

procedure jeu_mots_coupes is

   grille       : type_dictionnaire ;
   dico         : type_dictionnaire ;
   motsATrouver : type_dictionnaire ;
   motsTrouves  : type_dictionnaire ;

begin
   -- mettre le dictionnaire dans le tableau dico
   remplir ("dictionnaire_sans_accent.txt", dico);
   -- mettre la grille dans le tableau grille
   remplir ("racines_1757.txt", grille);
   -- mettre les mots a trouver dans le tableau motsATrouver
   remplir ("resultat_grille_1757.txt", motsATrouver);

   -- Verifier que chaque mot a trouver existe bien dans le dictionnaire
   New_Line;
   if not dictionnaire_inclus (motsATrouver, dico) then
      Put ("Attention, il manque des mots a trouver dans le dictionnaire");
   else
      -- recherche des mots
      construire_mots (grille, dico, motsTrouves);
      -- verification du resultat
      if taille(motsTrouves) = taille(motsATrouver) and
        dictionnaires_egaux (motsATrouver, motsTrouves)
      then
         Put ("*** Le resultat attendu a ete trouve");
         afficher_taille (motsTrouves);
         afficher_mots (motsTrouves);
      else
         Put_Line
           ("*** La liste des mots trouves est differente de celle attendue");
         if dictionnaire_inclus (motsTrouves, motsATrouver) then
            Put_Line ("** Il manque des mots");
         else
            Put_Line ("** Il y a plus de mots trouves que dans le corrige");
         end if;
      end if;
      -- afficher le resultat
      Put ("* Voici la liste des mots trouves ");
      afficher_taille (motsTrouves);
      afficher_mots_avec_longueur (motsTrouves);
   end if;

exception
   when ERREUR_OUVERTURE_FICHIER =>
      Put_Line ("Erreur dans l'ouverture du fichier dictionnaire");

end jeu_mots_coupes;
