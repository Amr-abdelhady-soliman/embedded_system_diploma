#include "stdio.h"
#include "string.h"
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	char x[100];
	int i=0,count=0;
	printf("enter string \n");
	scanf("%s",x);
	while (x[i]!=0)
	{
		count++;
		i++;
	}
	printf("the lenghth is %d",count);
}
