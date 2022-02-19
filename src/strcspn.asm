global strcspn

section .text

strcspn:
	xor rcx, rcx
	xor	r8, r8
    xor r9, r9

loop:
	mov	al, byte[rdi + rcx]
	cmp	al, 0
	je end
	inc	rcx

substractloop:
	mov	r8b, byte[rsi + r9]
	cmp	r8b, 0
	je	loop
	cmp	al, r8b
	je	subindex
	inc	r9
	jmp	substractloop

subindex:
	sub rcx, 1
	mov rax, rcx
	ret

end:
	mov rax, rcx
	ret
