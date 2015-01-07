
SECTION .data

SECTION .text

global _start

_start:
	nop

	add eax, ebx
	add eax, eax
	mov esi, 0FFFFFFFFh
	add ebx, esi
	add esi, eax

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

SECTION .bss
      
