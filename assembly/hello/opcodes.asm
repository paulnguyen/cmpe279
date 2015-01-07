
SECTION .data

SECTION .text

global _start

_start:
	nop

	mov ecx, eax
	add ecx, ecx
	add ecx, eax	

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

SECTION .bss
      
