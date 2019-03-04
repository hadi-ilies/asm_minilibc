  global strcspn:function
  section .text

strcspn:
    xor rax, rax ;;
    xor r8, r8 ;;tmp letter
    xor r9, r9 ;;index
    cmp BYTE[rsi], 0
    jz Len
    jmp Loop

Len:
   cmp BYTE[rdi], 0
   jz Exit
   inc rax
   inc rdi
   jmp Len
	
Check_str:
    cmp BYTE[rsi + r9], r8b
    jz Exit
    inc r9
    cmp BYTE[rsi + r9], 0
    jnz Check_str
    inc rdi
    inc rax
    xor r9, r9

Loop:
   mov r8b, BYTE[rdi]
   cmp r8b, 0 			;
   jz Exit			;
   jmp Check_str

Exit:
    ret
