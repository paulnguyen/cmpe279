;
; note register values for "ecx", "edx" and "eax" for instructions between tne nop's
;

SECTION .data

SECTION .text

global _start

_start:
	nop
	
	mov ecx, 00000002h 
	mov edx, 00000000h
	mov eax, 00000008h
	div ecx
	inc ecx
	div ecx
	
	nop

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

SECTION .bss
      
