section .text
global ft_write
global ft_strlen
global ft_atoi_base

ft_write:
	mov rax, 1
	syscall
	ret
 
ft_strlen:
    mov rax, 0

_ft_strlen_loop:
    cmp byte [rdi], 0
    je _return

    inc rax
    inc rdi
    jmp _ft_strlen_loop


ft_atoi_base:
	mov rax, 0

_ft_atoi_base_loop:
	cmp byte [rdi], 0
	je _return


    movzx rcx, byte [rdi]
    sub rcx, '0'

    imul rax, 10
    add rax, rcx

    inc rdi
	jmp _ft_atoi_base_loop

_return:
    ret
