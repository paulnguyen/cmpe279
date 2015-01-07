
SECTION .data

SECTION .text

global _start

_start:
	nop

	mov ecx, 5
	mov edx, 2
	call func1

	nop

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

func1:
	mov eax, ecx
	sub eax, edx
	ret

SECTION .bss
      
