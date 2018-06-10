.intel_syntax noprefix

.text

.globl rekurentna


#a1 = 1
#an = (4an-1)+3
#int rekurentna(int)
#eax            edi
rekurentna:
    enter 0, 0
    mov esi, 1#brojac
    mov r9d, 4#uvek mnozimo sa 4
    mov eax, 1#prvi element
petlja:
    cmp esi, edi
    je kraj

    #mov r9d, 4
    mul r9d
    add eax, 3
    inc esi
    jmp petlja
    
kraj:

    leave
    ret
