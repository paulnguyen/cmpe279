; hello.asm
;
; build:
; nasm -f elf -g -F stabs hello.asm
; ld -o hello hello.o

SECTION .data

msg:	db	"Hello Assembly World!", 22
len:	equ	$-msg

SECTION .bss

SECTION .text

global _start

_start:
	nop		 
	mov eax, 4	; sys_write system call
	mov ebx, 1	; std output
	mov ecx, msg	; offset of msg
	mov edx, len	; length of msg
	int 80H		; invoke syscall
	nop		 
	mov eax, 1	; exit system call
	mov ebx, 0	; return code
	int 80H		; exit


      
