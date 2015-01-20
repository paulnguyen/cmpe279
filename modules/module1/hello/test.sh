
nasm -f elf -g -F stabs $1.asm
ld -o test $1.o

