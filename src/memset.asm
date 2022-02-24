global memset

section .text

memset:
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