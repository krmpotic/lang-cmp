section .data
	A equ 49 
	B equ 63
	SYS_EXIT equ 60
section .text
	global _start
_start:
	mov rax, A
	mov rbx, B
	call gcd
	jmp exit

gcd: ; gcd(rax,rbx) = rcx
	mov rdx, 0
	div rbx
	mov rax, rbx
	mov rbx, rdx
	cmp rbx, 0
	jne gcd
	ret
exit:
	mov rdi, rax
	mov rax, SYS_EXIT
	syscall
