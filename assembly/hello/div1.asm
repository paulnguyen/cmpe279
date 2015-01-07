;
; note register values for "ebx", "edx" and "eax" for instructions between tne nop's
;

SECTION .data

SECTION .text

global _start

_start:
	nop
	
	mov ebx, 0000003Ah 
	mov edx, 00000020h
	mov eax, 00000000h
	div ebx
	div bx
	mov bl, 0feh
	div bl
	
	nop

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

SECTION .bss
      
