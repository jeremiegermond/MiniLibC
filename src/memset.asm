global memset

section .text

memset:
    cmp rdi, 0
    je end
    xor rcx, rcx

loop:
    cmp rcx, rdx
    jae end
    mov byte[rcx + rdi], sil
    inc rcx
    jmp loop

end:
    ret