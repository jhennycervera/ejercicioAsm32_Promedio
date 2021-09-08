nasm -g -f elf32 promedio.asm -o promedio.o
gcc -m32 -g promedio.o main.c -o ej2
./ej2 3 4 5 6