global _start

section .rodata
    hello_world: db "Hello world!", 0xA, 0x0

section .text
_start:
    mov eax, 0x04
    mov edx, 0x1
    mov ecx, hello_world
    mov edx, 14
    int 0x80

    mov eax, 0x01
    mov edx, 0
    int 0x80
