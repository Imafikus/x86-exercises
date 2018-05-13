.intel_syntax noprefix

.text

.globl sum_n_gaus

#int sum_n_gaus(int)
#eax            edi
sum_n_gaus:
    
    enter 0, 0

    mov eax, edi #eax = n
   
    inc edi
    mul edi # eax = n(n+1)

    mov esi, 2
    div esi # eax = n(n+1) / 2 

    leave
    ret
