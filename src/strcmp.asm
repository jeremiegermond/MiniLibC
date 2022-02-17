global strcmp

section .text

strcmp:
    xor rax, rax
    
loop:
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
    jmp loop

end:
    sub al, bl
    movsx rax, al
    ret