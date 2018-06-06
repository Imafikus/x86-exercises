.intel_syntax noprefix

.text

.globl bitovska_aritmetika 

#                                               and         or          xor         neg
#void bitovska_aritmetika(unsigned, unsigned, unsigned*, unsigned*, unsigned*, unsigned*);
                            #edi        esi     rdx         rcx         r8      r9

bitovska_aritmetika:

    enter 0, 0
    
    push rdi
    and edi, esi
    mov [rdx], edi
    pop rdi

    push rdi
    or edi, esi
    mov [rcx], edi
    pop rdi

    push rdi
    xor edi, esi
    mov [r8], edi
    pop rdi

    push rdi
    not edi
    mov [r9], edi
    pop rdi

    leave 
    ret


