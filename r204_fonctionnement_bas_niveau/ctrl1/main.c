#include <stdio.h>
#define TAILLE_MAX 100

/*
	Question 1:
	char chA[TAILLE_MAX], chB[TAILLE_MAX];

*/




/* QUENTION 2
	On note que les majuscules (leurs place dans la table ascii) pose un probléme, les mots en majuscule sont
	toujours evalués par la fonction comme plus petits.

	On part donc de la conjecture que l'utilisateur ne rentre que des mots en minuscules.
*/

int testChaine(char ch1[TAILLE_MAX], char ch2[TAILLE_MAX]);


int main()
{
	char chA[TAILLE_MAX] = "xzerttyuiop !", chB[TAILLE_MAX]= "azertyuiop";  //A initialiser seulement en minuscile.
	printf("resultat: %d\n", testChaine(chA, chB));

	return 0;
}


int testChaine(char ch1[TAILLE_MAX], char ch2[TAILLE_MAX]) {
	for (int i = 0; i < TAILLE_MAX; ++i)
	{
		if (ch1[i] != ch2[i])
		{
			if (ch1[i]<ch2[i])
			{
				return 0;
			}else {
				return 1;
			}
		}
	}
	return 1;
}