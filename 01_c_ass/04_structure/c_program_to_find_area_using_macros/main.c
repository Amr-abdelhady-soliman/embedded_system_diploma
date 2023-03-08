#include "stdio.h"
#define pi 3.14
#define area(r) pi*r*r
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	int raduis;
	printf("enter raduis \n");
	scanf("%d",&raduis);
	printf("area is = %f",area(raduis));
		}
