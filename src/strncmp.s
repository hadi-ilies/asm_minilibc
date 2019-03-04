  global        strncmp:function
                    ;;rdi -> first parameter | rsi -> second parameter when  equal to type *str | rdx | rcx
strncmp:
    xor rax, rax
    cmp rdx, 0
    jz zero
    jmp loop_strncmp

zero:
    xor rax, rax
    ret
	
incrementation:
    cmp BYTE[rdi], 0
    jz diff	
    dec rdx
    inc rdi
    inc rsi

loop_strncmp:
    cmp rdx, 0
    jz diff	
    mov al, BYTE[rdi]
    cmp al, BYTE[rsi] ;; comp two by
    jz incrementation

diff:
    xor rax, rax
    xor rcx, rcx 
    mov al, BYTE[rdi]
    mov cl, BYTE[rsi] 
    sub eax, ecx  
    ret
