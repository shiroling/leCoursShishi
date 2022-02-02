#include <stdio.h>
#include <stdlib.h>

float addition(float a, float b);
float soustraction(float a, float b);
float division(float a, float b);

float a = 3;
float b = 6;

int main(int argc, char const *argv[])
{
	printf("result %f, %f: %f\n",a ,b , division(a, b));
	return 0;
}


float addition(float a, float b) {
	return a+b;
}
float soustraction(float a, float b) {
	return a-b;
}
float division(float a, float b) {
	if (b == 0)
	{
		printf("zebi divise pas par 0\n");
		return -1;
	}
	return a/b;
}

float multiplication(float a, float b) {
	return a*b;
}