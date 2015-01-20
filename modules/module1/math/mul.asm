
SECTION .data

SECTION .text

global _start

_start:
	nop

	mov eax, 447
	mov ebx, 1739
	mul ebx

	mov eax, 0FFFFFFFFh
	mov ebx, 03B72h
	mul ebx

	nop

 	mov eax, 1      ; exit system call
        mov ebx, 0      ; return code
        int 80H         ; exit

SECTION .bss

      
