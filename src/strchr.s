    global strchr:function
    section .text

strchr:
	xor rax, rax ;; set value to first rdi
	cmp rdi, 0
	jz Error

loop_strchr:
	cmp BYTE[rdi], sil ;; sil its the second parameter
	jz Finished
	cmp BYTE[rdi], 0
	jz Error
	inc rdi
	jmp loop_strchr
Error:
	ret
Finished:
	mov rax, rdi
	ret
