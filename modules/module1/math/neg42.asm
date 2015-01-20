
SECTION .data

SECTION .text

global _start

_start:
	nop

	mov eax, 42
	neg eax
	add eax, 42	; should be zero

	nop

 	mov eax, 1      ; exit system call
        mov ebx, 0      ; return code
        int 80H         ; exit

SECTION .bss

      
