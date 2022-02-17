global strlen

section .text

strlen:
    xor rax, rax

loop:
    cmp byte[rdi], 0
    je end
    inc rdi
    inc rax
    jmp loop

end: 
    ret