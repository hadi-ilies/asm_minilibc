  global        memmove:function
                    ;;rdi -> first parameter | rsi -> second parameter when  equal to type *str | rdx | rcx

memmove:
	cmp	rsi, rdi
	jb	memcpy
	mov rax, rdi
	mov rcx, rdx
	mov rdx, rsi
	cld
	rep movsb
	mov rsi, rdx
	mov rdi, rax
    ret

memcpy:
    mov rax, rdi

loop_memcpy:
    cmp rdx, 0
    jz exit
    mov al, BYTE[rsi]
    mov BYTE[rdi], al
    dec rdx
    inc rdi
    inc rsi
    jmp loop_memcpy

exit:
    ret
