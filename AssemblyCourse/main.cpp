#include "stdio.h"

#define ASSEMBLY

#ifdef ASSEMBLY

extern "C" int Sum(int a, int b);

#else

int Sum(int a, int b)
{
	return a + b;
}

#endif

int main()
{
	int a = 0, b = 0, sum = 0;

	a = 3;
	b = 2;
	sum = Sum(a, b);

	printf("The Sum is %d\n", sum);

	return 0;
}