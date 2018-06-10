.intel_syntax noprefix

.text

.globl izbaci_neparne

#void izbaci_neparne(long* niz, unsigned *duzina);
                        #rdi        rsi

izbaci_neparne:
    enter 0, 0
   #mov rsi, rsi

    #pravimo kopiju pokazivaca na pocetak
    mov r9, rdi

    #postavljamo brojac
    mov eax, 0
    mov r10d, [rsi]

    #ovo ce nam biti nova duzina
    mov r11d, 0

petlja:
    cmp eax, r10d
    je kraj

    mov ebx, [r9]
    test ebx, 1
    jz paran
    jmp dalje
    #ako je neparan samo se ne desi nista
    

paran:
    #paran je, pa ga upisujemo na trenutnu adresu na koju pokazuje rdi, i povecamo rdi
    mov [rdi], ebx
    add rdi, 8
    inc r11d
    jmp dalje
        

dalje:
    add r9, 8
    inc eax

    jmp petlja

kraj:
    mov [rsi], r11d

    leave
    ret

