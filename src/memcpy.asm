global memcpy

section .text

memcpy:
    cmp rdi, 0
    je end
    cmp rsi, 0
    je end
    xor rcx, rcx

loop:
    cmp rcx, rdx
    jae end
    mov r8b, byte[rsi + rcx]
    mov byte[rdi + rcx], r8b
    inc rcx
    jmp loop

end:
    ret