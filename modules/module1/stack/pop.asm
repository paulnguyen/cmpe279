
SECTION .data

SECTION .text

global _start

_start:

	nop

	popf      ; Pop the top 2 bytes from the stack into Flags
	popa      ; Pop the top 16 bytes from the stack into AX, CX, DX, BX,
	          ; BP, SI, and DI...but NOT SP!
	popad     ; Pop the top 32 bytes from the stack into EAX, ECX, EDX, EBX,
	          ; EBP, ESI and EDI...but NOT ESP!!!
	pop cx    ; Pop the top 2 bytes from the stack into CX
	pop esi   ; Pop the top 4 bytes from the stack into ESI
	pop word [ebx] ; Pop the top 4 bytes from the stack into memory at EBX

	nop

 	mov eax, 1      ; exit system call
        mov ebx, 0      ; return code
        int 80H         ; exit

SECTION .bss

      
