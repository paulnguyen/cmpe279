
SECTION .data

SECTION .text

global _start

_start:
	nop

	push 5
	push 2
	call func1
	add esp, 8

	nop

	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit

func1:
	mov eax, dword [esp + 8] 
	sub eax, dword [esp + 4]
	ret

SECTION .bss
      
