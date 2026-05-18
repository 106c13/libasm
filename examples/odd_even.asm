section .data
even db "Even", 10
even_len equ $ - even

odd db "Odd", 10
odd_len equ $ - odd

section .text
global _start

_start:
	mov rbx, 110

_loop:
	dec rbx

	cmp rbx, 0
	jz _exit

	test rbx, 1
	jnz _even
	jmp _odd

_odd:
	mov rax, 1
	mov rdi, 1
	mov rsi, odd
	mov rdx, odd_len
	syscall

	jmp _loop

_even:
	mov rax, 1
	mov rdi, 1
	mov rsi, even
	mov rdx, even_len
	syscall

	jmp _loop

_exit:
	mov rax, 60
	mov rdi, 6
	syscall
