.intel_syntax noprefix

.text

.globl max

#max(int[], int)
        #rdi esi
max:
    enter 0, 0

    mov rcx, 1
    mov eax, [rdi]#prvi element postavljamo da bude max

petlja:
    cmp ecx, esi
    jge kraj

    cmp eax, [rdi + 4*rcx]
    jl novi_maks

    inc ecx
    jmp petlja

novi_maks:
    mov eax, [rdi + 4*rcx]
    inc ecx
    jmp petlja

kraj:
    leave
    ret

