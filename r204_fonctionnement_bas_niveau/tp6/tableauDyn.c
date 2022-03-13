#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>


typedef int MON_TYPE;

void printInfo(MON_TYPE *tablo) {
	printf("Taille du type initial : %d \n",sizeof(MON_TYPE));
	printf("Taille de la variable tablo : %d\n",sizeof(tablo));
	printf("Taille usable du tablo : %d\n",malloc_usable_size(tablo));
	printf("Adresse de la variable tablo : %p\n",&tablo); /*Le compilateur laisse passer a priori cette erreur !!! */
	printf("Adresse du premier élément : %p\n",&tablo[0]);
	printf("Taille d'un élément de tablo : %d\n",sizeof(tablo[0]));
	printf("|-----------------------------------------|\n");
}

MON_TYPE* allocationZebi(int QTE1) {
	MON_TYPE * tablo1;
	tablo1 = (MON_TYPE *) calloc (QTE1, sizeof(MON_TYPE));
	if (tablo1==NULL) { 
	    perror("Echec malloc") ;
		exit (EXIT_FAILURE) ;
	}
	return tablo1;
}

int main (void)
{
	int i = 15;
	MON_TYPE * tablo1 = allocationZebi(i);
	printf("%d: Taille usable du tablo : %d\n",i ,malloc_usable_size(tablo1));
	free(tablo1);

/*
	printInfo(tablo1);
	printInfo(tablo2);
	printInfo(tablo3);
*/
	
	return (EXIT_SUCCESS) ;
}