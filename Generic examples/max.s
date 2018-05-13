.intel_syntax noprefix

.text

.globl max

#int max(int, int)
#eax    edi    esi
max:
    enter 0, 0
    cmp edi, esi
    jg first_greater#if edi < esi just continues to second_greater label

second_greater:
    mov eax, esi
    leave
    ret

first_greater:
    mov eax, edi
    leave
    ret    
