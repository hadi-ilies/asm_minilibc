  global        memset:function
                    ;;rdi -> first parameter | rsi -> second parameter when  equal to type *str | rdx | rcx
memset:
    mov rax, rdi
    jmp loop_memset

loop_memset:
    mov BYTE[rdi], sil
    dec rdx
    inc rdi
    cmp rdx, 0
    jz exit
    jmp loop_memset
exit:
    ret
