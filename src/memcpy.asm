global memcpy

section .text

memcpy:
    xor rcx, rcx
    mov rax, rdi

loop:
    cmp rcx, rdx
    je end
    mov byte[rax + rcx], sil
    inc rcx
    jmp loop

end:
    ret