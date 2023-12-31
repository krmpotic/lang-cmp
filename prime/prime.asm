section .data
	LIMIT     equ 101
	STDOUT    equ 1
	SYS_WRITE equ 1
	SYS_EXIT  equ 60
	ASCII_ZERO  equ 0x30
	ASCII_SPACE equ 0x20
	ASCII_NL    db 0xa

section .text
	global _start
_start:
	mov r12, 2; r12 2..LIMIT
  b:
	cmp r12, LIMIT
	je exit
	mov rcx, 2
  c:
	cmp rcx, r12 ; tested all rcx 2..r12?
	jnl prime    ; yes, r12 is prime!

	;; r12 % rcx == 0?
	mov rax, r12
	xor rdx, rdx
	div rcx
	cmp rdx, 0
	je back ; true, so r12 not prime!

	inc rcx
	jmp c
  back:
	inc r12
	jmp b

prime:
	mov rax, r12
	mov rbx, ASCII_SPACE

print_rax_bx: ; print int in rax, and character in bx
	dec rsp
	mov [rsp], bl
	mov rcx, 1 ; rcx counter
	mov rbx, 10
  _pr_0:
	xor rdx, rdx
	div rbx
	add dl, ASCII_ZERO
	dec rsp
	mov [rsp], dl
	inc rcx
	cmp rax, 0
	jne _pr_0

	; write(fd, buf, count)
	mov rax, SYS_WRITE
	mov rdi, STDOUT
	mov rsi, rsp
	mov rdx, rcx
	syscall

	jmp back
exit:
	; write(fd, buf, count)
	mov rax, SYS_WRITE
	mov rdi, STDOUT
	lea rsi, [ASCII_NL]
	mov rdx, 1
	syscall

	; exit(status)
	mov rax, SYS_EXIT
	mov rdi, 0
	syscall
