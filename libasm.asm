section .text

global ft_write
global ft_strlen
global ft_atoi_base
global ft_strcmp
global ft_strcpy


; ======================== FT_STRCPY =======================

ft_strcpy:
    mov rax, rdi

.strcpy_loop:
    mov dl, [rsi]
    mov [rdi], dl

    inc rdi
    inc rsi

    cmp dl, 0
    jne .strcpy_loop

    ret


; ======================== FT_STRCMP =======================

ft_strcmp:
.strcmp_loop:
    mov al, [rdi]
    mov bl, [rsi]

    cmp al, bl
    jne .diff

    cmp al, 0
    je .equal

    inc rdi
    inc rsi
    jmp .strcmp_loop

.diff:
    movzx eax, al
    movzx ebx, bl
    sub eax, ebx
    ret

.equal:
    xor eax, eax
    ret


; ======================== FT_WRITE ========================

ft_write:
    mov rax, 1
    syscall
    ret


; ======================== FT_STRLEN =======================

ft_strlen:
    xor rax, rax

.strlen_loop:
    cmp byte [rdi], 0
    je .done

    inc rax
    inc rdi
    jmp .strlen_loop

.done:
    ret


; ==================== FT_ATOI_BASE ========================

ft_atoi_base:
    xor rax, rax

.atoi_loop:
    cmp byte [rdi], 0
    je .done

    movzx rcx, byte [rdi]
    sub rcx, '0'

    imul rax, 10
    add rax, rcx

    inc rdi
    jmp .atoi_loop

.done:
    ret
