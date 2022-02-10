#include <stdio.h>

int main(int argc, char const *argv[])
{
	int nb[] = {1, 2, 3, 4};

	for (int i = 0; i < 4; ++i)
		printf("%d\n", nb[i]);

	if (sizeof(int)*4 == sizeof(nb))
		printf("le tableau est bien de 4 fois la taille d'un char\n");


	return 0;
}