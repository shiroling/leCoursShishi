#include <stdio.h>
#include <string.h>

#define TAILLE 16

int main(int argc, char const *argv[])
{
	char ch1[TAILLE] = "12345";
	char ch2[TAILLE] = "789erfd45";
	char* ch3;

	ch3 = strcat(ch1, ch2);
	printf("la chaine est de longueure %d taille %d\n%s\n", strlen(ch1), sizeof(ch1), ch1 );

	printf("la chaine est de longueure %d taille %d\n%s\n", strlen(ch3), sizeof(ch3), ch3 );

	return 0;
}