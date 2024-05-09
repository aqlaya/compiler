global _start

extern _print

section .data
    t dq 10

section .text
_start:
    mov qword[t], 9393989686969
    mov r15, t
    call _print
    mov rax, 60
    syscall
