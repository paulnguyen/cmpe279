;
; draw the state of the stack for instructions between tne nop's
; also, what are the values of eax and ebx ?
;

SECTION .data

SECTION .text

global _start

_start:
	nop
	
	push 012345678h
	mov eax, 3h
	push eax
	pop eax	
	pop ebx

	nop

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

SECTION .bss
      
