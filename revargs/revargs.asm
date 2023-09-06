section .data
	SYS_WRITE equ 1
	SYS_EXIT equ 60
	STDOUT equ 1
	NL db 0xa
	ASCII_SPACE db 0x20

section .text
	global _start
_start:
	pop r15     ;argc
	mov rbx, rsp;**argv
  loopx:
	dec r15
	cmp r15, 0
	je exit     ;no more args left

	add rbx, 8
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

exit:
	mov rax, SYS_EXIT
	mov rdi, 0
	syscall
