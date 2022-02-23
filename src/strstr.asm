global strstr
section .text

strstr:
	xor rcx, rcx
	mov al, [rdi]
	mov al, [rsi]

inc_rdi:
	cmp al, 0
	je fail
	inc rdi
	
loop:
	mov al, [rdi + rcx]
	cmp byte[rsi + rcx], 0
	je end
	cmp al, byte[rsi + rcx]
	jne inc_rdi
	inc rcx
	jmp loop

end:
	mov rax, rdi
	ret

fail:
	mov rax, 0