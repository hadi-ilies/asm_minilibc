  global        memcpy:function
                    ;;rdi -> first parameter | rsi -> second parameter when  equal to type *str | rdx | rcx
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
