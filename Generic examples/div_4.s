.intel_syntax noprefix

.text

.global div_4

#int greater_4(int)
#eax           edi

div_4:
    enter 0, 0

    test edi, 3
    jz it_is

it_isnt:
    mov eax, 0
    leave
    ret

it_is:
    mov eax, 1
    leave
    ret
    