section .data
msg db "minishell-> ", 10
len equ $ - msg
bad db "fuck", 10

section .text
global _start

_start:
	mov rbp, 0
	add rbp, 10
	sub rbp, 5
	
	mov rax, 1
	mov rdi, rbp
	mov rsi, msg
	mov rdx, len
	syscall

	cmp rax, 0
	jne _fail

_success:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdi, len
	syscall 

	mov rax, 60
	mov rdi, 0
	syscall

_fail:
	mov rax, 1
	mov rdi, 1
	mov rsi, bad
	mov rdx, 5
	syscall

	mov rax, 60
	mov rdi, 3
	syscall
