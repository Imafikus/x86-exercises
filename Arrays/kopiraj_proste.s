.intel_syntax noprefix

.text

.globl kopiraj_proste

#unsigned prost(unsinged a)
#           eax     edi

prost:
    enter 0, 0

    #napravi kraj brojaca
    mov ecx, edi
    shr ecx, 1

    mov r9d, 2 # pocetak brojaca

    cmp edi, 1
    jbe nije_prost

petlja_prost:
    cmp r9d, ecx
    je jeste_prost

    mov edx, edi
    xor edx, edx
    div r9d

    cmp edx, 0
    je nije_prost

    inc r9d
    jmp petlja_prost


jeste_prost:
    mov eax, 0
    jmp kraj

nije_prost:
    mov eax, 0
    jmp kraj

kraj:
    leave   
    ret


#rax, rdi, rsi, rdx, rcx, r8 − r11 ovo pripada pozvanoj

# rbx, rbp, rsp, r12 − r15 - ovo pripada pozivajucoj

#int izdvoj_proste(unsigned*, unsigned, unsigned*)
                    #rdi,       esi,        rdx 
#usnigned prost(int)
#eax            edi

kopiraj_proste:

    enter 0, 0
    mov esi, esi

    mov rax, 0#brojac za proste

    mov r9d, 0#brojac za elemente niza
 
petlja:
    cmp r9d, esi
    je kraj_izvdoj

    push rax
    push rdi
    push rsi
    push rdx
    push r9
    push r10


    mov edi, [rdi]
    call prost

    mov r11d, eax#ucitaj prost broj
    
    pop r10
    pop r9
    pop rdx
    pop rsi
    pop rdi
    pop rax

    cmp r11d, 1
    je dodaj_prost
    jmp dalje

dodaj_prost:
    inc rax
    mov r10d, [rdi]
    mov [rdx], r10d
    add rdx, 4
    jmp dalje

dalje:
    inc r9d
    add rdi, 4

    jmp petlja


kraj_izvdoj:

    leave
    ret





