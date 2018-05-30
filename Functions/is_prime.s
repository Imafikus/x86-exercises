.intel_syntax noprefix

.text

.globl prost

#unsigned is_prime (unsigned)
#eax                edi

prost:
    enter 0, 0

    #init counter
    mov r8, edi
    shr r8, 1
    