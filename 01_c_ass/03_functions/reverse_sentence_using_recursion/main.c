#include "stdio.h"
void reverse_sentence(void);
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	reverse_sentence();

}
void reverse_sentence(void)
{
	char c;
	scanf("%c",&c);
	if (c!='\n')
	{
		reverse_sentence();
		printf("%c",c);
	}
}


