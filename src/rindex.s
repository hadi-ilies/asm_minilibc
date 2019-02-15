    global rindex:function
    section .text

rindex:
	xor rax, rax ;; set value to 0

loop_rindex:
    cmp BYTE[rdi], sil
    cmove rax, rdi
    cmp BYTE[rdi], 0
    jz Finished
    inc rdi
    jmp loop_rindex

Finished:
    ret
