
SECTION .data

SECTION .text

global _start

_start:
	nop
	
	mov ebp, esi	; 32-bit
	mov bl, ch	; 8-bit
	add di, ax	; 16-bit
	add ecx, edx	; 32-bit	

	nop

 	mov eax, 1      ; exit system call
        mov ebx, 0      ; return code
        int 80H         ; exit

SECTION .bss
      
