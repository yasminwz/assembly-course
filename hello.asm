;Compilar em nasm -f elf64 hello.asm
;Linkeditar - Transformar o programa em linguagem de máquina para um executável
;Linkeditor - ld -s -o hello hello.o
section .data
    msg db 'Hello World!'
    tam equ $- msg

section .text

global _start

_start:
    mov EAX, 0x4
    mov EBX, 0x1
    mov ECX, msg
    mov EDX, tam
    int 0x80
    
    mov EAX, 0x1
    mov EBX, 0x0
    int 0x80   