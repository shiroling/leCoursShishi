#define LG_CHAINE 15
#define LG_REP 100

struct client {
    int num;
    char nom[LG_CHAINE+1];
    char prenom[LG_CHAINE+1];
};

/* Charge le répertoire rep à partir du fichier nomFic,
   nb contient le nombre de clients chargés */
void charger(struct client rep[], int* nb, char nomFic[]);

/* Range le répertoire rep de nb clients dans le fichier nomFic */
void ranger(struct client rep[], int nb, char nomFic[]);

/* Affiche le répertoire rep de nb clients */
void afficher(struct client rep[], int nb);

/* Affiche les clients du répertoire rep de nb clients dont
   le nom commence par prefixe */
void afficherPrefixe(struct client rep[], int nb, char prefixe[]);
