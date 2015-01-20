
SECTION .data

SECTION .text

global _start

_start:
	nop

	mov eax, 07FFFFFFh
	inc eax

	nop

 	mov eax, 1      ; exit system call
        mov ebx, 0      ; return code
        int 80H         ; exit

SECTION .bss

      
