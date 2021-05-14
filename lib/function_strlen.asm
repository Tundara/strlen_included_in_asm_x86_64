slen:
    push rbx
    mov rbx, rax

loop_len:
    cmp byte [rax],0
    je end_slen
    inc rax
    jmp loop_len

end_slen:
    sub rax, rbx
    pop rbx
    ret

sprint:
    push rdx
    push rsi
    push rdi
    push rax
    call slen
    mov rdx, rax
    pop rsi
    mov rdi, 1
    mov rax, 1
    syscall
    pop rdi
    pop rsi
    pop rdx
    ret


