    global strlen:function
    section .text

strlen:
    xor rax,  rax    ;; set counter to 0
    
loop_strlen:
    cmp  BYTE[rdi],  0  ; get next character
    jz   Finished            ; CL == 0, so exit the loop
    inc  rax                 ; increment pointer 
    inc rdi                   ; increment rdi move pointer on string
    jmp loop_strlen
    
Finished:
    ret
