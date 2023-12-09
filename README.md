# Laboratorium #5 in CA

This repository contains code for 2 tasks given on a laboratorium #5 in Computational Architecture conducted using mixed programming in C & Assembly x86 

## 'cone_area.*' Files

Files with this name are files with code that calculates the area of a cone. Data such as radius, height, etc are given in the C program, while all of the calculations are managed by coprocessor using Assembly x86. 

The formula by which the area is calculated:

$$V=\frac{1}{3}\pi h(R^2+Rr+r^2)$$

## 'm128_i32.*' Files

Files with this name are files with code that uses __m128 union to multiply 4 integer numbers in one XMM register by 4 integer numbers in the other XMM register in Assembly x86.

## License

[GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.html#license-text)
