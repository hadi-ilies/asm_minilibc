global strstr:function

strstr:
    cmp BYTE[rdi], 0
    jz Finished
    cmp BYTE[rsi], 0
    jz Finished

    mov rax, rdi
    xor r9, r9 ;; index
    jmp Loop

FOUND:
    sub rax, r9
    ret

Check:
    cmp BYTE[rsi + r9], 0
    jz FOUND
    inc rax
    cmp BYTE[rax], 0
    jz Finished
    xor r9, r9
    
Loop:
    mov r8b, BYTE[rsi + r9]
    cmp BYTE[rax], r8b
    jnz Check
    cmp BYTE[rax], 0
    jz Check
    inc rax
    inc r9
    jmp Loop

Finished:
    xor rax, rax
    ret
