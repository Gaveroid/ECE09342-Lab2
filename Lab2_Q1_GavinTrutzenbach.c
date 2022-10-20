// IES Lab 2 - Question 1
// Gavin Trutzenbach
// 10-20-2022

#include <msp430.h> 


/**
 * main.c
 */

float b = 5.0;

int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	
	unsigned char c = 0x0f;
	unsigned char d = 0x5;

	unsigned char or = c||d;
	unsigned char and = c&&d;

	int a = 3;

	a+=1; // incrementing a
	b-=1.0; // decrementing b



	return 0;
}
