    global 	strchr:function
    section 	.text

strchr:
    xor 	rax, rax 	;; set value to 0;; 
    cmp 	rdi, 0		;; compare rdi to 0 
    jz 		Error 		;; true so go to Error func

loop_strchr:
    cmp 	BYTE[rdi], sil 	;; sil its the second parameter
    jz 		Finished	;; true so go to finish func 
    cmp 	BYTE[rdi], 0	;; compare byte of rdi with 0
    jz 		Error		;; true so go to Error func
    inc 	rdi		;; increment rdi
    jmp 	loop_strchr	;; recursion in loop_strchr
Error:
	ret			;; return rax register
Finished:
	mov 	rax, rdi	;; move rdi in rax
	ret			;; return rax register
