global memcpy

section .text

memcpy:
    xor rcx, rcx

loop:
    cmp rcx, rdx
    je end
    mov r8b, byte[rsi + rcx]
    mov byte[rdi + rcx], r8b
    inc rcx
    jmp loop

end:
    ret