#include "stdio.h"
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	int num,a,b,i;
	int x[30];
	printf("enter number of elements of the array \n");
	scanf("%d",&num);
	printf("enter elements of matrix \n");
	for (i=0;i<num;i++)
	{
		printf("enter elemennt a(%d) \n",i+1);
		scanf("%d",&x[i]);
	}
	printf("display elements of matrix \n");
	for (i=0;i<num;i++)
	{
		printf("%d \t",x[i]);
	}
	printf ("\n enter the number you want to insert  : \n");
	scanf("%d",&a);
	printf("please inter the location \n");
	scanf("%d",&b);
	for (i=num;i>=b-1;i--)
	{
		x[i+1]=x[i];
	}
	num++;
	x[b-1]=a;
	for (i=0;i<num;i++)
	{
		printf("%d \t",x[i]);
	}
}
