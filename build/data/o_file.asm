global _start
extern _print
section .data
a dq 0
b dq 0

section .text
compare_0:
mov rax, 1
jmp L0
compare_1:
mov rax, 1
jmp L1
compare_2:
mov rax, 1
jmp L2

_start:
push 9393989686969
push qword[a]
pop rax
pop rdx
mov [a], rdx
push 2
push qword[b]
pop rax
pop rdx
mov [b], rdx
condition_0:
push qword[a]
push qword[b]
push qword[b]
pop rax
pop rdx
imul rax, rdx
push rax
pop rax
pop rdx
cmp rax, rdx
mov rax, 0
jle compare_0
L0:
push rax
cmp rax, 1
jnge end_condition_0
condition_1:
push 0
push qword[b]
push qword[a]
pop rax
pop rdx
mov r8, rdx
mov rdx, 0
cqo
idiv r8
mov rax, rdx
push rax
pop rax
pop rdx
cmp rax, rdx
mov rax, 0
je compare_1
L1:
push rax
cmp rax, 1
jnge end_condition_1
push qword[b]
pop r15
call _print 
push qword[b]
push qword[a]
pop rax
pop rdx
mov r8, rdx
mov rdx, 0
cqo
idiv r8
push rax
push qword[a]
pop rax
pop rdx
mov [a], rdx
jmp condition_1
end_condition_1:
push 1
push qword[b]
pop rax
pop rdx
add rax, rdx
push rax
push qword[b]
pop rax
pop rdx
mov [b], rdx
jmp condition_0
end_condition_0:
push 1
push qword[a]
pop rax
pop rdx
cmp rax, rdx
mov rax, 0
jne compare_2
L2:
push rax
cmp rax, 1
jnge end_condition_2
push qword[a]
pop r15
call _print 
end_condition_2:
mov rax, 60
syscall

