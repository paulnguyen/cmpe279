gcc -g firstprog.c -o firstprog
objdump -D firstprog > firstprog-objdump-att.txt
objdump -M intel -D firstprog > firstprog-objdump-intel.txt
