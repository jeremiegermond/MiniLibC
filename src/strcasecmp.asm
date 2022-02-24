global strcasecmp

section .text

strcasecmp:
	mov r8b, byte[rdi]
	cmp r8b, "A"
	jb caps
	cmp r8b, "Z"
	jb to_lower
    
to_lower:
	add r8b, 32
	jmp caps

to_lower2:
	add byte[rsi], 32
	jmp compare

caps:
	cmp byte[rsi], "A"
	jb compare
	cmp byte[rsi], "Z"
	jb to_lower2

compare:
	cmp r8b, byte[rsi]
	jne end
	cmp r8b, 0
	je end
	cmp r9b, 0
	je end
	inc rsi
	inc rdi
	jmp strcasecmp

end:
	sub r8b, byte[rsi]
	movsx rax, r8b
	ret