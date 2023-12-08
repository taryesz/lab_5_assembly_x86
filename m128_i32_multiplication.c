#include <stdio.h>
#include <xmmintrin.h>

__m128 mul_at_once(__m128 one, __m128 two);

int main() {

	__m128 one;
	one.m128_i32[0] = 1;
	one.m128_i32[1] = 2;
	one.m128_i32[2] = 3;
	one.m128_i32[3] = 4;

	__m128 two;
	two.m128_i32[0] = 2;
	two.m128_i32[1] = 2;
	two.m128_i32[2] = 2;
	two.m128_i32[3] = 2;

	__m128 wynik = mul_at_once(one, two);

	printf("\nWynik: %d %d %d %d", wynik.m128_i32[0], wynik.m128_i32[1], wynik.m128_i32[2], wynik.m128_i32[3]);

	return 0;
};

