global memcpy

section .text

memcpy:
    xor rcx, rcx
    mov rax, rdi
    
loop:
    cmp rcx, rdx
    je end
    mov r8b, byte[rsi + rcx]
    mov byte[rax + rcx], r8b
    inc rcx
    jmp loop

end:
    ret