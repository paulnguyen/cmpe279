
SECTION .data

SECTION .text

global _start

_start:
	nop

	pushf      ; Push the Flags register
	pusha      ; Push AX, CX, DX, BX, SP, BP, SI, and DI, in that order, all at once
	pushad     ; Push EAX, ECX, EDX, EBX, ESP, ESP, EBP, ESI, and EDI, all at once
	push ax    ; Push the AX register
	push eax   ; Push the EAX register
	push word [bx]  ; Push the word stored in memory at BX
	push dword [edx] ; Push the doubleword in memory at EDX
	push edi   ; Push the EDI register

	nop

 	mov eax, 1      ; exit system call
        mov ebx, 0      ; return code
        int 80H         ; exit

SECTION .bss

      
