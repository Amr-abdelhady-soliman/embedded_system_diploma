#include "stdio.h"
void main ()
{
	float a,b;
	char x;
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	printf("inter first integer\n");
	scanf("%f",&a);
	printf("inter  operation\n");
	scanf(" %c",&x);
	printf("inter second integer\n");
	scanf("%f",&b);
	switch (x)
	{
	case '+' :
		printf("%.2f",a+b);
		break;
	case '-' :
		printf("%.2f",a-b);
		break;
	case '*' :
		printf("%.2f",a*b);
		break;
	case '/' :
		printf("%.2f",a/b);
		break;
	default :
		printf ("inter a valid operation");
		break;
	}
}


