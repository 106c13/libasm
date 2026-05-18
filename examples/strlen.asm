section .data
msg db "Hello12", 0

section .text
global _start

_start:
	sub rsp, 12

	mov qword [rsp], msg
	mov dword [rsp + 8], 0

_str_len:
	mov rbx, [rsp]

	cmp byte [rbx], 0
	je _exit

	inc qword [rsp]

	inc dword [rsp + 8]
	jmp _str_len

_exit:
	add dword [rsp + 8], 48

	mov rax, 1
	mov rdi, 1
	lea rsi, [rsp + 8]
	mov rdx, 1
	syscall 

	mov rax, 60
	mov rdi, 1
	syscall


