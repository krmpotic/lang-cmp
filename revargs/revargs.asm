section .data
	SYS_WRITE equ 1
	SYS_EXIT equ 60
	STDOUT equ 1
	ASCII_NL db 0xa
	ASCII_SPACE db 0x20

section .text
	global _start
_start:
	pop r15     ;argc
	cmp r15, 1
	je exit
	mov rax, r15
	shl rax, 3 ; *8
	mov rbx, rsp;**argv
	add rbx, rax
  loopx:
	dec r15
	cmp r15, 0
	je nl_exit     ;no more args left

	add rbx, -8
	jmp puts

	jmp loopx

puts:
	mov r12, 0
c:
	mov rsi, [rbx]
	add rsi, r12

	mov cl, [rsi]
	cmp cl, 0
	je space

	mov rax, SYS_WRITE
	mov rdi, 1
	mov rdx, 1 
	syscall

	inc r12
	jmp c
space:
	lea rsi, [ASCII_SPACE]
	mov rax, SYS_WRITE
	mov rdi, 1
	mov rdx, 1
	syscall
	je loopx

nl_exit:
	lea rsi, [ASCII_NL]
	mov rax, SYS_WRITE
	mov rdi, 1
	mov rdx, 1
	syscall
exit:
	mov rax, SYS_EXIT
	mov rdi, 0
	syscall
