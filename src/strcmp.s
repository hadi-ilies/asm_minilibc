  global        strcmp:function
                    ;;rdi -> first parameter | rsi -> second parameter when  equal to type *str | rdx | rcx
strcmp:
    xor 	rax, rax 	;;init rax to 0   
    jmp 	loop_strcmp 	;;go to loop_strcmp

incrementation:
    inc 	rdi		;;increment rdi
    inc 	rsi		;;increment rsi

loop_strcmp:
    cmp 	BYTE[rdi], 0	;;cmp byte rdi with 0
    jz 		diff		;;true go to diff
    mov 	al, BYTE[rdi]	;;move byte rdi into al
    cmp 	al, BYTE[rsi] 	;;compare byte rsi with al
    jz 		incrementation	;;true go to incrementation

diff:
    xor 	rax, rax	;;init rax to 0
    xor 	rcx, rcx 	;;init rcx to 0
    mov 	al, BYTE[rdi]	;;move byte rdi into al
    mov 	cl, BYTE[rsi] 	;;move byte rsi into cl
    sub 	eax, ecx  	;;substraction of eax with ecx
    ret				;; return rax
