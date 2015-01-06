all: helloasm

clean:
	rm helloasm.asm~ helloasm helloasm.o

helloasm: helloasm.o
	ld -o helloasm helloasm.o

helloasm.o: helloasm.asm
	nasm -f elf -g -F stabs helloasm.asm

insight:
	insight helloasm

kdbg:
	kdbg helloasm 

