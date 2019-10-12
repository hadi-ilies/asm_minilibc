  global strcspn:function
  section .text

strcspn:
    xor 	rax, rax 	;;init rax to 0
    xor 	r8, r8 		;;init r8 register to 0
    xor 	r9, r9 		;;init r9 register to 0 
    cmp 	BYTE[rsi], 0	;; compare byte rsi with 0
    jz 		Len		;; true got to Len 
    jmp 	Loop		;; else go to Loop
Len:
   cmp 		BYTE[rdi], 0	;;compare byte rdi with 0 
   jz 		Exit		;;true jump to Exit function
   inc 		rax		;;increment rax register
   inc 		rdi		;;increment rdi register
   jmp 		Len		;;jump into Len function
	
Check_str:
    cmp 	BYTE[rsi + r9], r8b	;;compare byte rsi + R9 with r8b
    jz 		Exit			;;true jump to Exit Function
    inc 	r9			;;inc  r9 register
    cmp 	BYTE[rsi + r9], 0	;;compare byte rdi + r9 with 0
    jnz 	Check_str		;;false go to check_str
    inc 	rdi			;;increment rdi
    inc 	rax			;;increment rax
    xor 	r9, r9			;;init r9 ^ r9 = 0

Loop:
   mov 		r8b, BYTE[rdi]		;;move  byte rdi in r8b
   cmp 		r8b, 0 			;;compare byte r8b with 0
   jz 		Exit			;;true go to Exit function
   jmp 		Check_str		;;jump to check_str function

Exit:
    ret					;; return rax register
