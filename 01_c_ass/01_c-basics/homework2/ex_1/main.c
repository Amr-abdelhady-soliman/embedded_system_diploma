

#include "stdio.h"
void main ()
{
	int a;
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	printf("inter value of a\n");
	scanf("%d",&a);
	if (a%2==0)
	{
		printf("the number is even");
	}
	else
	{
		printf("the number is odd");
	}
}


