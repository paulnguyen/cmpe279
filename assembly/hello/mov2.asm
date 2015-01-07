
SECTION .data

SECTION .text

global _start

_start:
	nop

	mov ax,  9CH
	mov eax, 99991234H
	mov cl,  22H
	mov ah,  cl 

	nop

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

SECTION .bss
      
