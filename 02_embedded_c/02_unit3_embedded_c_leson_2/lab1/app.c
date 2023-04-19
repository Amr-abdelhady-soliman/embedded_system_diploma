#include "uart.h"
unsigned char buffer [100]="learn in deapth amr gweily";
void main ()
{
	send_string (buffer);
}