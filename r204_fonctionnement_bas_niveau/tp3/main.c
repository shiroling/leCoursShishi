#include <stdio.h>

int setInt(int newValue, int input);
void setPtr(int newValue, int* input);

void input();

int main(int argc, char const *argv[])
{
	int a = 0;
	printf("%p\n", &a);

	setPtr(12, &a);
	printf("%d\n", a);

	return 0;
}

int setInt(int newValue,int  input) {
	input = newValue;
}

void setPtr(int newValue, int* input) {
	printf("addr ptr in setPtr: %p\n", input);
	*input = newValue;
}
