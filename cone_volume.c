#include <stdio.h>

float objetosc_stozka(unsigned int big_r, unsigned int small_r, float h);

int main() {

	unsigned int R = 6;
	unsigned int r = 2;
	float h = 5.3;

	float wynik = objetosc_stozka(R, r, h);

	printf("\nWynik: %f", wynik);

	R = 7;
	r = 3;
	h = 4.2;

	wynik = objetosc_stozka(R, r, h);

	printf("\nWynik: %f", wynik);

	R = 8;
	r = 4;
	h = 6.1;

	wynik = objetosc_stozka(R, r, h);

	printf("\nWynik: %f", wynik);

	return 0;
};
