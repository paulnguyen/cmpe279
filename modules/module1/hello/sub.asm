;
; note register values for "eax", "ebx" and "ecx" for instructions between tne nop's
;

SECTION .data

SECTION .text

global _start

_start:
	nop
	
	mov eax, 0000001Ah
	mov ebx, 00000003h
	mov ecx, 00000002h
	sub eax, ebx
	add eax, ebx
	sub ecx, ebx
	add ecx, eax
	sub cl, al			
	
	nop

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

SECTION .bss
      
