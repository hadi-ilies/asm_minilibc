    global strlen:function
    section .text


strlen:
    xor rax, rax    ;; set counter to 0
    
loop_strlen:
    inc  rax                 ; increment pointer
    cmp  BYTE[rax], 0  ; get next character
    jz   Finished            ; CL == 0, so exit the loop
Finished:
    ret