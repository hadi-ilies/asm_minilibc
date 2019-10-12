    global 	rindex:function
    section 	.text

rindex:
    xor 	rax, rax 	;; set value to 0

loop_rindex:
    cmp 	BYTE[rdi], sil	;; compare byte rdi with sil register
    cmove 	rax, rdi	;; move rdi in rax
    cmp 	BYTE[rdi], 0	;; compare byte rdi with 0
    jz 		Finished	;; true go to Finished func
    inc 	rdi		;; increment rdi
    jmp 	loop_rindex	;; recursion with loop_rindex

Finished:
    ret				;; return rax register

