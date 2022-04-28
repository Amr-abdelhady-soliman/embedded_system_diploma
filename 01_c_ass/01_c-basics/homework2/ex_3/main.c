
#include "stdio.h"
void main ()
{
	float a,b,c;
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	printf("inter number 1 \n");
	scanf("%f",&a);
	printf("inter number 2 \n");
	scanf("%f",&b);
	printf("inter number 3 \n");
	scanf("%f",&c);
	if (a>b)
	{
		if (a>c)
		{
			printf("%.2f is bigger",a);
		}
		else
		{
			printf("%.2f is bigger",c);
		}
	}
	else
	{
		if (b>c)
		{
			printf("%.2f is bigger",b);
		}
		else
		{
			printf("%.2f is bigger",c);
		}
	}
}



