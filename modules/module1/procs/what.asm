;
; What is the code between the nop's doing?
;

SECTION .data

SECTION .text

global _start

_start:
	nop

	mov ecx, 01111111h
	push ecx
	inc ecx
	pop ecx

	nop

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

SECTION .bss
      
