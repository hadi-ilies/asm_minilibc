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
    cmp BYTE[rdi + r9], r8b
    jz Exit
    inc rax
    inc r9
    cmp BYTE[rdi + r9], 0
    jnz Check_str
    inc rsi
    cmp BYTE[rsi], 0		;
    jz Len			;
    xor r9, r9

Loop:
   cmp BYTE[rdi], 0
   jz Exit
   mov r8b, BYTE[rsi]
   cmp r8b, 0 			;
   jz Exit			;
   jmp Check_str

Exit:
    ret
