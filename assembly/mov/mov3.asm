
SECTION .data

msg: db "ABCDEFGH12345678"

SECTION .text

global _start

_start:
	nop

	mov ecx, msg	 ; address of msg buffer
	mov eax, [ecx]	 ; copy 4 bytes starting at addr. pointed by ecx
	mov eax, [ecx+8] ; copy 4 bytes starting at ecx addr + 8 bytes  
	mov ebx, [msg]	 ; copy 4 bytes starting at addr. pointed to by msg

	mov al, [msg]	 	; copy one byte
	mov al, [msg+3]	 	; copy one byte
	mov ax, [msg]	 	; copy two bytes
	mov [msg], byte 'Z' 	; must specify size of copy for target buffer 
	
	nop

 	mov eax, 1      ; exit system call
        mov ebx, 0      ; return code
        int 80H         ; exit

SECTION .bss

      
