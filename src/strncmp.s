  global        strncmp:function
                    ;;rdi -> first parameter | rsi -> second parameter when  equal to type *str | rdx | rcx
strncmp:
    xor rax, rax
    jmp loop_strncmp

incrementation:
    cmp rdx, 0
    jz diff
    dec rdx
    inc rdi
    inc rsi

loop_strncmp:
    cmp BYTE[rdi], 0
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