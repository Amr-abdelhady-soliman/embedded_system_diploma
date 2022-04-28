#include "stdio.h"
void main ()
{
	int a,i,sum=0;
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	printf("inter an integer\n");
	scanf("%d",&a);
	for(i=0;i<=a;i++)
	{
		sum=sum+i;
	}
	printf ("sum is %d",sum);
}



