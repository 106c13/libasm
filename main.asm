section .data
    msg db "ASSembly is best", 10
    len equ $ - msg

section .text
    global _start

_start:
    sub rsp, 16

    mov dword [rsp], 10
    mov qword [rsp + 4], msg

_loop:
    cmp dword [rsp], 0
    je _exit

    mov rax, 1
    mov rdi, 1
    mov rsi, [rsp + 4]
    mov rdx, len
    syscall

    dec dword [rsp]
    jmp _loop

_exit:
    mov rax, 60
    mov rdi, 1
    syscall
