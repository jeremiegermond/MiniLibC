global strcspn

section .text

strcspn:
	xor rax, rax
	xor rcx, rcx

loop:
	mov al, byte[rdi + rcx]
	cmp al, 0
	je end
	inc rcx

search:
	xor rbx, rbx

next_char:
	cmp byte[rsi + rbx], 0
	je loop
	cmp al, byte[rsi + rbx]
	je found
	inc rbx
	jmp next_char

found:
	dec rcx
	mov rax, rcx
	ret

endnull:
	mov rax, 0
	ret

end:
	mov rax, rcx
	ret