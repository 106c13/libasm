section .data
	data db "Hello peace of shit"
	len equ $ - data
	filename db "output.txt", 0
	msg db "Proccess: 3301"
	len_msg equ $ - msg

section .text
	global _start

_start:
	sub rsp, 8

	;open file
	mov rax, 2
	mov rdi, filename
	mov rsi, 0x41
	mov rdx, 0o644
	syscall

	;write data to the file
	mov rdi, rax
	mov rax, 1
	mov rsi, data
	mov rdx, len
	syscall

	;close the file
	mov rax, 3
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, len_msg
	syscall

	mov rax, 39
	syscall

	

	;exit
	mov rax, 60
	mov rdi, 0
	syscall 
