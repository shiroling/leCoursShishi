#include <stdio.h>

void main() {
    FILE* fichier;
    fichier = fopen("f1.txt", "w");
    if (fichier == NULL) {
        printf("Erreur à l'ouverture du fichier f1\n");
    } else {
        printf("Ouverture du fichier f1 réussie\n");
        fclose(fichier);
    }
}