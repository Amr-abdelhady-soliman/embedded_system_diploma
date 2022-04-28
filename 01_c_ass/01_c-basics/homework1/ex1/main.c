/*
 * main.c
 *
 *  Created on: Apr 25, 2022
 *      Author: amr gweily
 */


// Solving I/O form console Problem

#include "stdio.h"
void main()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	printf("c programming");
}
