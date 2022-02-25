global strstr
section .text

strstr:
	xor rcx, rcx
	mov al, byte[rdi]
	cmp al, 0
	je endnull

inc_rdi:
	inc rdi
	
loop:
	mov al, byte[rdi + rcx]
	cmp byte[rsi + rcx], 0
	je end
	cmp al, byte[rsi + rcx]
	jne inc_rdi
	inc rcx
	jmp loop

end:
	mov rax, rdi
	ret

endnull:
	mov rax, 0