  global strpbrk:function
  section .text

strpbrk:
    mov rax, rdi ;;
    xor r8, r8 ;;tmp letter
    xor r9, r9 ;;index
    jmp Loop

Check_str:
    cmp	BYTE[rsi + r9], r8b
    jz	Diff
    inc	r9
    cmp	BYTE[rsi + r9], 0
    jnz	Check_str
    inc	rdi
    xor	r9, r9

Loop:
	cmp BYTE[rsi], 0
   	jz Error
	mov r8b, BYTE[rdi]
	jmp Check_str

Error:
    xor rax, rax
    ret

Diff:
    mov rax, rdi
    ret
