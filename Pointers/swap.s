.intel_syntax noprefix

.text

.globl swap
#swap(int*, int*)
    # rdi, rsi

swap:
    enter 0, 0

    #sa adrese koja je u rdi ucitava se int u eax
    mov eax, [rdi]

    #sa adrese koja je u rsi ucitava se 
    mov ecx, [rsi]

    mov [rdi], ecx
    mov [rsi], eax

    leave
    ret
    

