.intel_syntax noprefix

.text

.global mul_8bit

#long mul_8bit(int int)
#     eax   esi     edi

mul_8bit:

    enter 0, 0

    movsx rax, esi
    movsx rdi, edi

    imul rdi

    leave
    ret


