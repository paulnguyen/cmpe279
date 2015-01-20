
SECTION .data

str: db "this is a string"

SECTION .text

global _start

_start:
	nop

	mov eax, [str]  ; str = displacement. address of str in eax
	mov eax, [07h+esp+ebx] ; base + displacement -- buffer offset?	
	mov ecx, [ebp+ebx] ; base + index  -- arrays?

	nop

 	mov eax, 1      ; exit system call
        mov ebx, 0      ; return code
        int 80H         ; exit

SECTION .bss

      
