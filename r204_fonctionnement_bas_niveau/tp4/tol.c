#include <stdio.h>
#include <string.h>
#include <stdlib.h>
void main() {
	int i;
	char entier[10];

	strcpy(entier, "0x100");
	i = strtol(entier, NULL, 10);
	printf("%s interprété en base 10 : %3d\n", entier, i);
	i = strtol(entier, NULL, 16);
	printf("%s interprété en base 16 : %3d\n", entier, i);
	i = strtol(entier, NULL, 8);
	printf("%s interprété en base 8 : %3d\n", entier, i);
	i = strtol(entier, NULL, 0);
	printf("%s interprété en base 0 : %3d\n", entier, i);
}