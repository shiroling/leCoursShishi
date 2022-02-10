#include <stdio.h>
#include "utils.h"
#define TAILLE_TABLE 5


void helloWorld() {
	printf("Hello world !\n");
}

int* populate(int tab[TAILLE_TABLE]) {
	for (int i = 0; i < TAILLE_TABLE; ++i)
		tab[i] = i;
	return tab;
}