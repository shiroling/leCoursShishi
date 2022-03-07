#include <stdio.h>
#include <stdlib.h>
#define QTE 123

typedef double MON_TYPE;

int main (void)
{
	MON_TYPE * tablo ;
	tablo = (MON_TYPE *) malloc (QTE * sizeof(MON_TYPE));
	if (tablo==NULL) { 
	    perror("Echec malloc") ;
		exit (EXIT_FAILURE) ;
	}

	return (EXIT_SUCCESS) ;
}