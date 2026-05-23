section .text
global ft_write
global ft_strlen
global ft_atoi_base
global ft_fib

ft_fib:
    mov eax, 1
	xor ebx, ebx
	xor ecx, ecx

.loop:
    cmp ecx, edi
    jne .continue
	ret

.continue:
	mov edx, ebx
	mov ebx, eax
	add eax, edx

    inc ecx
    jmp .loop

; ======================== FT_WRITE ========================
ft_write:
	mov rax, 1
	syscall
	ret


; ======================== FT_STRLEN ======================= 
ft_strlen:
    mov rax, 0

_ft_strlen_loop:
    cmp byte [rdi], 0
    je _return

    inc rax
    inc rdi
    jmp _ft_strlen_loop

; ==================== FT_ATOI_BASE ========================
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
