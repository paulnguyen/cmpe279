
rm -f helloasm.asm~
nasm -f elf -g -F stabs helloasm.asm
ld -o helloasm helloasm.o
