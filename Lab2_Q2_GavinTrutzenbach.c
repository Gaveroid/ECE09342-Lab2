// IES Lab 2 - Question 2
// Gavin Trutzenbach
// 10-20-2022

#include <msp430.h> 


int sum(int a, int b)
{
    int s = a + b;
    return s;
}


/**
 * main.c
 */
int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	
	int a = 0b10001111000000001; // binary number
	int b = 0b10001100000000001;

	int c = sum(a,b); // adding those numbers

	while(1);

	return 0;
}

