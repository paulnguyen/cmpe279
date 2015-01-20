
SECTION .data

SECTION .text

global _start

_start:
	nop

	mov eax, 3h
	mov edx, 44h
	mov edx, edx
	mov ecx, edx
	mov edx, eax	 

	nop

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

SECTION .bss
      
