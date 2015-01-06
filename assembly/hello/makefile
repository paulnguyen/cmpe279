all: helloasm simple

clean:
	rm *~ *.o helloasm simple

helloasm: helloasm.o
	ld -o helloasm helloasm.o

simple: simple.o
	ld -o simple simple.o

helloasm.o: helloasm.asm
	nasm -f elf -g -F stabs helloasm.asm

simple.o: simple.asm
	nasm -f elf -g -F stabs simple.asm

insight:
	insight helloasm

kdbg:
	kdbg helloasm 

