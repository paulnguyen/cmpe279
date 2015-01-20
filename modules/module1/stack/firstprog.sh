gcc -g firstprog.c -o firstprog.out
objdump -D firstprog.out > firstprog-objdump-att.txt
objdump -M intel -D firstprog.out > firstprog-objdump-intel.txt
