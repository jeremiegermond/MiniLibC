global memmove

section .text

memmove:
    cmp rdi, rsi
    jg right
    jl left
    jmp end

right:
    mov r8, 0
    jmp loopright

loopright:
    cmp r8, rdx
    jae end
    mov al, byte[rsi + r8]
    mov byte[rdi + r8], al
    inc r8
    jmp loopright

left:
    mov r8, 0
    jmp loopleft

loopleft:
    cmp r8, rdx
    jae end
    mov r9, rdx
    sub r9, r8
    dec r9
    mov al, byte[rsi + r9]
    mov byte[rdi + r9], al
    inc r8
    jmp loopleft

end:
    mov rax, rdi
    ret