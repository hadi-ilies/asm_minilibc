    global strchr:function
    section .text

strchr:
    xor rax, rax ;; set value to 0
loop_strchr:
    mov rax, rdi ;; assign value
    cmp BYTE[rdi], 0
    jz Error
    cmp BYTE[rdi], sil ;; sil its the second parameter
    jz Finished
    inc rdi 
    jmp loop_strchr
Error:
   xor rax, rax
   ret
Finished:
    ret