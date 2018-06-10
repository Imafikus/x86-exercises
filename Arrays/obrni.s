.intel_syntax noprefix

.globl obrni
# void obrni(long[], int);
#               rdi  esi

obrni:
	enter 0,0
    mov esi, esi

	lea r8, [rdi+8*(rsi-1)]

	
petlja:
	
	cmp rdi, r8
	jnb kraj

	
	mov rax, [rdi]
	mov rcx, [r8]	

	# Vracamo podatke u obrnutom redosledu od ucitanog.
	mov [rdi], rcx
	mov [r8], rax

	# Povecavamo levi pokazivac.
	add rdi, 8
	# Smanjujemo desni pokazivac.
	sub r8, 8

	# Skok na pocetak petlje.
	jmp petlja
kraj:
	# Povratni tip je void pa je nebitno sta je u registru rax.
	leave
	ret
