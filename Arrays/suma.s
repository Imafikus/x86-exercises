.intel_syntax noprefix

.text

.globl suma

#int suma(int[], int);
        #  rdi, esi

suma:
    enter 0, 0

    mov edx, 0 #postavi brojac

    mov eax, 0 # postavi sumu

petlja:
    cmp edx, esi
    jge kraj

    mov ecx, [rdi + 4 * rdx]

    add eax, ecx

    inc edx
    jmp petlja


kraj:
    leave
    ret
