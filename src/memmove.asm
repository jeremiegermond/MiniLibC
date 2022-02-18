global memmove

section .text

memmove:
    cmp rdi, 0
    je end
    cmp rsi, 0
    je end
    xor rcx, rcx

loopleft:
    cmp rcx, rdx
    jae end
    mov r8b, byte[rsi + rcx]
    mov byte[rdi + rcx], r8b
    jmp loopleft

loopright:
    cmp rdx, 0
    jb end
    mov r8b, byte[rsi + rdx]
    mov byte[rdi + rdx], r8b
    dec rdx
    jmp loopright

end:
    ret