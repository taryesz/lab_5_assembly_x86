.686
.xmm
.model flat

public _objetosc_stozka

.data

	duze_r real4 ?
	male_r real4 ?
	trojka real4 3.0
	wysokosc real4 ?

.code
_objetosc_stozka PROC

	push ebp
	mov ebp, esp

	push esi
	push edi
	push ebx

	; -----------

	mov ecx, [ebp+16]					; ecx = wysokosc
	mov wysokosc, ecx					; wysokosc = h

	cvtpi2ps xmm0, qword PTR [ebp+8]	; konwertuj R i r na floaty

	movups [ebp+8], xmm0				; zapisz wynik konwertacji w pamieci
	mov eax, [ebp+8]					; eax = duze R
	mov ebx, [ebp+12]					; ebx = male r

	fld dword PTR [ebp+12]				; zaladuj r na stos koprocesora
	fmul st(0), st(0)					; r^2							st(2)

	fld dword PTR [ebp+12]				; zaladuj r na stos koprocesora st(1)
	fld dword PTR [ebp+8]				; zaladuj R na stos koprocesora st(0)
	fmul								; r*R

	; aktualnie na stosie: st(0) = r*R, st(1) = r^2

	fadd								; r*R + r^2

	; stos: st(0) = r*R + r^2

	fld dword PTR [ebp+8]				; zaladuj R na stos koprocesora
	fmul st(0), st(0)					; R^2

	fadd								; R^2 + r*R + r^2 = st(0)

	fld wysokosc						; zaladuj h ==== MOZNA UZYC FILD [ebp+16] I NIE ROBIC RECZNEJ KONWERSJI

	fmul								; h * (R^2 + r*R + r^2)
	fldpi								
	fmul								; pi * h * (R^2 + r*R + r^2) = st(0)

	fld1								; st(1) = 1
	fld trojka							; st(0) = 3

	fdiv								; st(0) = 1/3

	fmul								; st(0) = 1/3 * pi * h * (R^2 + r*R + r^2) = st(0)

	; -----------

	pop ebx
	pop esi
	pop edi
	pop ebp

	ret

_objetosc_stozka ENDP
END