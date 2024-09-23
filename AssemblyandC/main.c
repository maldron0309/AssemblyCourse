#include "stdio.h"

#ifdef ASSEMBLY

int Sum(int a, int b);

#else

int Sum(int a, int b)
{
	return a + b;
}
#endif

int main()
{
	int a = 0, b = 0, sum = 0;

	a = 5;
	b = 5;
	sum = Sum(a, b);

	printf("The sum is %d\n", sum);

	return 0;
}
