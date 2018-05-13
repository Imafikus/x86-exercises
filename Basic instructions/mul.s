.intel_syntax noprefix

.text

.globl mul

#int mul(a, b)
#eax    edi, esi

mul:
    enter 0, 0

    mov eax, edi
    imul eax, esi
    
    leave
    ret
