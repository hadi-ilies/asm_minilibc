  global        strcasecmp:function
                    ;;rdi -> first parameter | rsi -> second parameter when  equal to type *str | rdx | rcx
strcasecmp:
    xor rax, rax ;;
    xor r8, r8
    xor r9, r9

Loop:
   cmp BYTE[rdi], 0
   jz Diff
   mov r8b, BYTE[rdi]
   cmp r8b, 90 ;; if (r8b > Z)
   jns Loop1
   cmp r8b,  65 ;; if(r8b < A)
   js Loop1
   add r8b, 32 ;;convert to lower case

Loop1:
   mov r9b, BYTE[rsi]
   cmp r9b, 90 ;; if (r8b > Z)
   jns Comp1
   cmp r9b,  65 ;; if(r8b < A)
   js Comp1
   add r9b, 32 ;; convert to lower case

Comp1:
   cmp r8b, r9b
   jnz Diff
   inc rdi
   inc rsi
   jmp Loop

Diff:
    xor rax, rax
    sub r8d, r9d
    mov eax, r8d
    ret