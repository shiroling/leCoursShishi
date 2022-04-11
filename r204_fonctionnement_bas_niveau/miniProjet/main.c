#include <stdio.h>
#include <string.h>
#include <stdbool.h>

#include "utils.h"

#define BUFF 2048

bool isAlphaCaps(char c) {
	return ((c >= 'A') && (c <='Z')); 
}

bool isAlphaLow(char c) {
	return ((c >= 'a') && (c <='z')); 
}

bool isNum(char c) {
	return ((c >= '0') && (c <='9')); 
}

bool isAlphaNum(char *messageClair) {
	for (int i = 0; i < strlen(messageClair); ++i)
		if (!isAlphaLow(messageClair[i]) || !isAlphaCaps(messageClair[i]) || !isNum(messageClair[i]))
			return false;

	return true;
}


char *chiffrement(int cle, char *messageClair) {
	int len = strlen(messageClair);
	char *messageChiffré =  (char*)malloc( sizeof(char)* (len + 1));
	for (int i = 0; i < len; ++i)
	{
		messageClair[i] = (int)messageClair[i];
		if (isNum){
			printf("%c is num\n", messageClair[i]);
			messageChiffré[i] = 48+(((int)messageClair[i])-48 + cle) % 10;
		}
		if (isAlphaCaps){
			printf("%c is Caps\n", messageClair[i]);

			messageChiffré[i] = (((int)messageClair[i]) + cle) % 1;
		}
		if (isAlphaLow){
			printf("%c is Low\n", messageClair[i]);
			messageChiffré[i] = (((int)messageClair[i]) + cle) % 1;
		}
	}

	return messageChiffré;
}


char *déchiffrement(int cle, char *messageChiffré) {
	int len = strlen(messageChiffré);
	char *messageClair =  (char*)malloc( sizeof(char)* (len + 1));
	for (int i = 0; i < len; ++i)
	{
		messageChiffré[i] = (int)messageChiffré[i];
		messageClair[i] = 30 + (((int)messageChiffré[i])- 30- cle) % 142;
	}	
	return messageClair;
}


int main(int argc, char const *argv[])
{
	size_t bufsize = BUFF;

	int cle;
	printf("Donnez une clée de cryptage (entier) :\t");
	scanf("%d", &cle);

	char messageClair[bufsize];
	printf("Donnez à présent votre message (ne sautez de ligne qu'à la fin) :");
	scanf("%s", messageClair);

	if (!isAlphaNum(messageClair))
	{
		printf("Le message donné n'est pas alphanumérique\nmess: %s\n", messageClair);
	}

	char *mess1;
	char *mess2;
	mess1 = chiffrement(cle, messageClair);
	mess2 = déchiffrement(cle, mess1);


	printf("@main: %s\n", mess1);
	printf("@main: %s\n", mess2);




	return 0;
}