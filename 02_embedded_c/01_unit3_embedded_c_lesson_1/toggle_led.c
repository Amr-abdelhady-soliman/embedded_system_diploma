#include "stdint.h"
#define RCC_BASE 		0x40021000
#define GPIOA_BASE 		0x40010800
/*_________________REGISTER ADDRESS__________________*/

#define RCC_APB2ENR		*(volatile uint32_t *)(RCC_BASE +0X18)
#define GPIOA_CRH		*(volatile uint32_t *)(GPIOA_BASE+0X04)
#define GPIOA_ODR		*(volatile uint32_t *)(GPIOA_BASE+0X0C)
/*_________________BitField__________________________*/

typedef union {
	vuint32_t allfields;
	struct {
		vuint32_t reserved:13;
		vuint32_t p_13:1;
	}Pin
}R_ODR_t;
volatile R_ODR_t* R_ODR =(volatile R_ODR_t*)(GPIOA_BASE+0x0C);

	void main()
	{
	RCC_APB2ENR|= 1<<2;
	GPIOA_CRH  &= 0xff0fffff;
	GPIOA_CRH  |= 0x00200000;
	while (1)
	{
		R_ODR->pin.p_13=1;
		for(int i=0; i<5000;i++);
		R_ODR->pin.p_13=0;
		for(int i=0; i<5000;i++);
	}
	
	}