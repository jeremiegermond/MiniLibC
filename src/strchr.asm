global strchr

section .text

strchr:
    cmp rdi, 0
    je end_null
    jmp find
    
find:
    cmp byte[rdi], sil
    je end
    cmp byte[rdi], 0
    je end_null
    inc rdi
    jmp find

end_null:
    mov rax, 0
    ret

end:
    mov rax, rdi
    ret