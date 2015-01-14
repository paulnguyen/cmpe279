
SECTION .data

	msg db "HELLOWORLD"

SECTION .text

global _start

_start:
	nop
	
	mov ebx, msg
	mov eax, 5 
more:	add byte [ebx], 32
	inc ebx	
	dec eax
	jnz more	

	nop

 	mov eax, 1      ; exit system call
        mov ebx, 0      ; return code
        int 80H         ; exit

SECTION .bss

      
