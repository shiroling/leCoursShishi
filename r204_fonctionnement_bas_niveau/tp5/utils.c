#include "utils.h"

void exitOnError(const char* errMessage) {
	printf("%s\n", errMessage);
	exit(EXIT_FAILURE);
}

int writeOnFile(const char* filePath) {
	FILE* fic;
	int lgLigne;
	fic = fopen(filePath, "w");
	if (fic == NULL)
		exitOnError("Erreur à l'ouverture du fichier f1");


	char* ligne = NULL;
	size_t taille = 0;
	printf("Entrer un texte terminé par une ligne vide\n\n");
	

	while ((lgLigne = getline(&ligne, &taille, stdin)) != -1)
		fprintf(fic, "%s", ligne);

	


	free(ligne);
	fclose(fic);
}

int readOnFile(const char* filePath) {
	FILE* fic;
	int lgLigne;
	fic = fopen(filePath, "r");
	if (fic == NULL)
		exitOnError("Erreur à l'ouverture du fichier f1");


	char* ligne = NULL;
	size_t taille = 0;
	printf("%s: contains:\n\n", filePath);
	

	while ((lgLigne = getline(&ligne, &taille, fic)) != -1)
		printf("%s", ligne);
	
	free(ligne);
	fclose(fic);
}