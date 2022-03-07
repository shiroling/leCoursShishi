#include <stdio.h>
#include <string.h>

#include "clients.h"

#define LG_CHAINE 15
#define LG_REP 100

void main() {

    struct client rep[LG_REP]; /* répertoire clients */
    int lgRep;                 /* longueur du répertoire */

    charger(rep, &lgRep, "repertoire1.txt");
    afficher(rep, lgRep);
    afficherPrefixe(rep, lgRep, "Ma");
    ranger(rep, lgRep, "repertoire2.txt");
}
