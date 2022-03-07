#include <stdio.h>
#include <string.h>
#include <stdlib.h>

FILE* openfic(const char* path, const char* descriptor) {
    FILE* fic;
    if ((fic = fopen(path, descriptor)) == NULL); {
        printf("Erreur à l'ouverture du fichier texte\n");
        return fic;
    }
}


void main() {
    FILE* ficRead;
    FILE* ficWrite;
    ficRead = openfic("texte.txt", "r");
    ficWrite = openfic("out.txt", "w");

    int lgLigne;
    char* ligne = NULL;
    size_t taille = 0;
    printf("Entrer un texte terminé par une ligne vide\n\n");
    while (!feof(ficRead)) {
        getline(&ligne, &taille, ficRead);
            fprintf(ficWrite, "%s", ligne);
    }
    
    free(ligne);
    fclose(ficWrite);
    fclose(ficRead);
}
