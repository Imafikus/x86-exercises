.intel_syntax noprefix

.text

.globl kol_ost

#void kol_ostatak(unsigned, unsigned, unsigned*, unsigned*)
                # edi       esi         rdx-kol         rcx-ost

kol_ost:
    enter 0, 0

    push rdx #cuvamo rdx na steku

    mov edx, edi#smesi u odgovarajuci registar zbog div
    xor edx, edx
    
    div esi

    mov r10d, eax #smesti kolicnik
    mov r11d, edx #smesti ostatak

    #vratimo vrednost rdx sa steka
    pop rdx

    #upis na odgovarajuce adrese
    mov [rdx], r10d
    mov [rcx], r11d
    
    leave
    ret
