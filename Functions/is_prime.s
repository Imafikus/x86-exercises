.intel_syntax noprefix

.text

.globl is_prime

#unsigned is_prime (unsigned)
#eax                edi

is_prime:
    enter 0, 0

    mov eax, edi

    #init counter
    mov r8d, edi
    shr r8d, 1 # = edi / 2


    #check if edi == 1
    cmp edi, 1
    jz nije

    mov r9d, 2

petlja:

    cmp r9d, r8d
    jae jeste

    mov r10d, eax
    xor edx, edx
    div r9d

    #restore eax
    mov eax, r10d

    cmp edx, 0
    jz nije

    inc r9d
    

    jmp petlja

jeste:
    mov eax, 1
    jmp kraj

nije:
    mov eax, 0
    jmp kraj

kraj:
    leave
    ret
