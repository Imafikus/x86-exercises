.intel_syntax noprefix

#int add(int, int)
#eax     edi  esi


.globl add

.text

add:
    enter 0, 0

    mov eax, edi
    add eax, esi
    
    leave
    ret
