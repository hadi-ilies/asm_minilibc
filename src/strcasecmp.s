   global strcasecmp:function
   section .text

strcasecmp:
    xor rax, rax ;;
    xor r8, r8
    xor r9, r9
    
Loop:
   mov r8b, BYTE[rdi]
   cmp r8b, 91 ;; if (r8b >= Z + 1)
   jns Loop1
   cmp r8b, 65 ;; if(r8b < A)
   js Loop1
   add r8b, 32 ;;convert to lower case

Loop1:
   mov r9b, BYTE[rsi]
   cmp r9b, 91 ;; if (r8b >= Z + 1)
   jns Comp1
   cmp r9b, 65 ;; if(r8b < A)
   js Comp1
   add r9b, 32 ;; convert to lower case

Comp1:
   cmp r8b, r9b
   jnz Diff
   cmp BYTE[rdi], 0
   jz Diff	
   inc rdi
   inc rsi
   jmp Loop

Diff:
    xor rax, rax
    sub r8d, r9d
    mov eax, r8d
    ret
