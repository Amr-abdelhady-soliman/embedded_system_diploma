#include "stdio.h"
int fact(int);
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	int x,factorial;
	printf("enter the number to get factorial4 \n");
	scanf("%d",&x);
	factorial =fact(x);
	printf("factorial is %d",factorial);

}
int fact(int x)
{
	if (x==0)
		return 1;
	else
		return x*fact(x-1);
}


