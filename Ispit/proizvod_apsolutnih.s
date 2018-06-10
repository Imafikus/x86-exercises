.intel_syntax noprefix

.text

.globl proizvod_apsolutnih
#.globl abs
#int abs(int)
#   eax, edi

abs:
    enter 0, 0

    cmp edi, 0
    jng mnozi_minusom

    mov eax, edi
    jmp kraj

mnozi_minusom:
    
    mov eax, edi
    mov r9d, -1
    imul r9d

   # mov eax, edx
    jmp kraj

kraj:
    leave
    ret
#Promenjeni registri: rax, rdi, rdx, r9 
#int abs(int)
#   eax, edi

#proizvod_aposlutnih(int*, int)
#   eax             rdi     esi


proizvod_apsolutnih:
    enter 0, 0
    mov esi, esi

    mov eax, 1
    mov r9d, 0#brojac

glavna_petlja:
    cmp r9d, esi
    je kraj_glavnog

    push rax
    push rdi
    push rdx
    push r9

    mov edi, [rdi]
    call abs
    #jmp kraj_glavnog
    
    mov r10d, eax
    

    pop r9
    pop rdx
    pop rdi
    pop rax
    
    

    imul r10d
    #jmp kraj_glavnog

    #mov eax, edx
    add rdi, 4

    inc r9d
    jmp glavna_petlja

kraj_glavnog:
    leave
    ret
