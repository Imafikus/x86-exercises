.intel_syntax noprefix

.text

.globl div

#int div(int, int)
#eax,    edi, esi
div:

    enter 0, 0

    mov eax, edi
    cdq
    idiv esi

    leave
    ret
    