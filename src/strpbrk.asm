global strpbrk

section .text

strpbrk:
	mov rdx, rdi

loop:
	cmp byte[rdx], 0
	je putnull
	mov r8, rsi

second_loop:
	cmp byte[r8], 0
	je succes
	mov al, [rdx]
	cmp [r8], al
	je same_charac
	inc r8
	jmp second_loop

succes:
	inc rdx
	jmp loop

putnull:
	mov rax, 0

same_charac:
	mov rax, rdx

end:
	ret