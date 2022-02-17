global strncmp

section .text

strncmp:
    xor rax, rax
    jmp loop

loop:
    cmp rdx, 0
    je end
    mov al, byte[rdi]
    mov bl, byte[rsi]
    cmp al, 0
    je end
    cmp bl, 0
    je end
    cmp al, bl
    jne end
    inc rdi
    inc rsi
    inc rdx
    jmp loop

end:
    sub al, bl
    movsx rax, al
    ret
    
endnull:
    mov rax, 0
    ret