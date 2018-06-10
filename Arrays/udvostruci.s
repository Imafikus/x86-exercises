.intel_syntax noprefix

.text 

.globl udvostruci

#int kvadriraj (int)
#   eax         edi

kvadriraj:
    enter 0, 0
    mov edi, edi

    mov eax, edi
    shl eax, 1

    leave
    ret
#void udvostruci(int* a, int n)
#                  rdi,     esi 

udvostruci:
    enter 0, 0

    mov esi, esi    
    mov eax, 0
    
petlja:
    cmp eax, esi
    je kraj 

    push rax
    push rdi

    mov edi, [rdi]
    call kvadriraj
    mov r9d, eax

    pop rdi
    pop rax

    mov [rdi], r9d
    inc eax
    add rdi, 4

    jmp petlja

kraj:
    leave
    ret
