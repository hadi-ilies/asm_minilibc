global strstr:function

strstr:	
    mov rax, rdi
    xor r9, r9 ;; index
    jmp Loop
Error:
    cmp BYTE[rsi], 0
    jnz Loop 
    mov rax, rdi
    ret
	
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
    cmp r8b, 0
    jz FOUND
    
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
