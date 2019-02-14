  global chlak2:function
  section .text

chlak2:
    xor rax, rax ;;
    xor r8, r8 ;;tmp letter
    xor r9, r9 ;;index
    jmp Loop

Check_str:
    cmp BYTE[rdi + r9], r8b
    jz Exit
    inc rax
    inc r9
    cmp BYTE[rdi + r9], 0
    jnz Check_str
    inc rsi
    xor r9, r9

Loop:
   cmp BYTE[rdi], 0
   jz Exit
   mov r8b, BYTE[rsi]
   jmp Check_str

Exit:
    ret