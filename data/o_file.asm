global _start
extern _print
section .data
a dq 0

section .text

_start:
push 9393989686969
push qword[a]
pop rax
pop rdx
mov [a], rdx
mov rax, 60
syscall

