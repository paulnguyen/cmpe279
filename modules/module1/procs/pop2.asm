;
; draw the state of the stack for instructions between tne nop's
; also, what are the values of eax and ecx before and after the push and pops?
;

SECTION .data

SECTION .text

global _start

_start:
	nop

	mov eax, 01111111h
	mov ecx, 02222222h
	push eax
	push ecx
	pop eax
	pop ecx

	nop

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

SECTION .bss
      
