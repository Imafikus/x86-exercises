.intel_syntax noprefix

.text

.globl sum_n

#int sum_n (int)
#eax        edi

sum_n:
    enter 0, 0
    mov eax, 0#set sum to 0
main_loop:

    cmp edi, 0
    jz end

    add eax, edi
    dec edi
    
    jmp main_loop

end:
    leave
    ret
