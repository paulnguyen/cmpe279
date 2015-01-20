;
; note register values for "edx", "eax" and "ecx" for instructions between tne nop's
;

SECTION .data

SECTION .text

global _start

_start:
	nop
	
	mov edx, 0AB1E2FFFh
	mov eax, 00000003h
	mov ecx, 00000002h
	mul ecx
	mul ecx
	mov ax, 0EEEEh
	mul ax
	mul cl	
	
	nop

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

SECTION .bss
      
