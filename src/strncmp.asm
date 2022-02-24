global strncmp

section .text

strncmp:
    xor rax, rax
    xor rcx, rcx
    xor r8, r8

loop:
    mov r8b, byte[rsi + rcx]
    cmp rcx, rdx
    je endnull
    cmp r8b, 0
    je end
    cmp byte[rdi + rcx], r8b
    jne end
    inc rcx
    jmp loop

end:
    sub byte[rdi + rcx], r8b
    movsx rax, byte[rdi + rcx]
    ret

endnull:
    mov rax, 0
    ret