;
; note register values for "eax" for first 8 instructions
;

SECTION .data

SECTION .text

global _start

_start:
	nop

	mov eax, 0FFFFFFFEh
	inc eax
	inc al
	dec al
	inc ax
	dec ax
	inc eax
	inc eax 

	nop

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

SECTION .bss
      
