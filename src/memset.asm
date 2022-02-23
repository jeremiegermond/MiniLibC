global memset

section .text

memset:
    xor rcx, rcx

loop:
    cmp rcx, rdx
    mov byte[rcx + rdi], sil
    inc rcx
    jmp loop

end:
    ret