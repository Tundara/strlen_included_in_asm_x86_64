BITS 64

%include "lib/function_strlen.asm"

global _start

section .rodata
    string db "Hello",10,0

section .text

_start:
    mov rax, string
    call sprint
    jmp _exit

_exit:
    mov rax, 60
    mov rdi, 0
    syscall

