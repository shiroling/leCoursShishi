#include "clients.h"

FILE* openfic(const char* path, const char* descriptor) {
    FILE* fic;
    fic = fopen(path, descriptor);
    if (fic == NULL)
        printf("Erreur à l'ouverture du fichier: %s\n", path);

   	return fic;
}


void charger(struct client rep[], int* nb, char nomFic[]) {
    FILE* ficRead = openfic(nomFic, "r+");


    int i = 0;
    char oui[128];
    char* seek1;
    char* seek2;
	int firstNameLen, lastNameLen;

    while(!feof(ficRead)) {
    	getline(&oui, 128, ficRead);
    	//fscanf(ficRead, "%s\n", oui);
    	
    	seek1 = strchr(oui, ':')+ 1;

		firstNameLen= seek1-oui;
    	strncpy(rep[i].prenom , oui, firstNameLen);
    	rep[i].prenom[firstNameLen-1] = '\0';



    	seek2 = strchr(seek1+1, ':')+ 1;
    	lastNameLen = seek2-seek1;
    	strncpy(rep[i].nom , seek1, lastNameLen);
    	rep[i].nom[lastNameLen-1] = '\0';

    	rep[i].num = (int)strtol(seek2, NULL, 10);
    	//printf("%s, %s: %d\n", rep[i].prenom, rep[i].nom, rep[i].num);	//CONTROL
		i = i +1;
	}
	*nb = i;
    fclose(ficRead);
}




void ranger(struct client rep[], int nb, char nomFic[]) {
	FILE* ficWrite = openfic(nomFic, "w");

	for (int i = 0; i < nb; ++i)
		fprintf(ficWrite, "%s. %s: %d\n", rep[i].prenom, rep[i].nom, rep[i].num);	
}



void afficher(struct client rep[], int nb) {
	for (int i = 0; i < nb; ++i)
		printf("%s. %s: %d\n", rep[i].prenom, rep[i].nom, rep[i].num);	
}


void afficherPrefixe(struct client rep[], int nb, char prefixe[]) {
	for (int i = 0; i < nb; ++i)
	{
		if (!strncmp(rep[i].nom, prefixe, strlen(prefixe)))
			printf("%s as bien le préfixe: \"%s\"\n", rep[i].nom, prefixe);
	}
}