/*
 * main.c
 *
 *  Created on: Apr 25, 2022
 *      Author: amr gweily
 */
#include "stdio.h"
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	char x;
	printf("inter number \n");
	scanf("%c",&x);
	printf("%d",x);

}

