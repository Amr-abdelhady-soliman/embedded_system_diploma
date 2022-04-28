#include "stdio.h"
void main ()
{
	int a,i,factorial=1;
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	printf("inter an integer\n");
	scanf("%d",&a);
	for(i=1;i<=a;i++)
	{
		factorial=factorial*i;
	}
	printf ("factorial is %d",factorial);
}



