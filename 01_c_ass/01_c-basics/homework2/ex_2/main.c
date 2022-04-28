/*
 * main.c
 *
 *  Created on: Apr 25, 2022
 *      Author: amr gweily
 */




#include "stdio.h"
void main ()
{
	char a;
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	printf("inter alphabet \n");
	scanf("%c",&a);
	if (a=='a'||a=='e'||a=='i'||a=='o'||a=='u'||a=='A'||a=='E'||a=='I'||a=='O'||a=='U')
	{
		printf("the alphabet is vowel");
	}
	else
	{
		printf("the alphabet is consoant");
	}
}


