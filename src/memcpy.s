    global	memcpy:function
	
;;rdi -> first parameter | rsi -> second parameter when  equal to type *str | rdx | rcx

memcpy:
    mov 	rax, rdi 	;init rax with rdi

loop_memcpy:
    cmp 	rdx, 0		;compare rdx with 0
    jz		exit
    mov		al, BYTE[rsi]	;move byte in rsi into al 
    mov 	BYTE[rdi], al	;move al into rdi
    dec 	rdx		;decrement rdx
    inc 	rdi		;increment rdx
    inc 	rsi		;increment rsi
    jmp 	loop_memcpy	;kind of recursion
exit:
    ret				;return rax
