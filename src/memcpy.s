  global        memcpy:function
                    ;;rdi -> first parameter | rsi -> second parameter when  equal to type *str | rdx | rcx
memcpy:
    mov rax, rdi
    cmp rdx, 0
    jz exit
    jmp loop_memcpy

loop_memcpy:
    mov sil, BYTE[rsi]
    mov BYTE[rdi], sil
    dec rdx
    inc rdi
    inc rsi
    cmp rdx, 0
    jz exit
    jmp loop_memcpy
exit:
    ret
