  global        strcmp:function
                    ;;rdi -> first parameter | rsi -> second parameter when  equal to type *str | rdx | rcx
strcmp:
    xor rax, rax ;;init val return
    jmp loop_strcmp

incrementation:
    inc rdi
    inc rsi

loop_strcmp:
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