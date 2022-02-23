global rindex
global strrchr

section .text

rindex:
strrchr:
	xor rcx, rcx

counter:
	cmp byte[rdi + rcx], 0
	je loop
	inc rcx
	jmp counter

loop:
	cmp byte[rdi + rcx], sil
	je found
	cmp rcx, 0
	je end_null
	dec rcx
	jmp loop

end_null:
	mov rax, 0
	ret

found:
	mov rax, rdi
	add rax, rcx

end:
	ret