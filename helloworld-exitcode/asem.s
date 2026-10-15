.intel_syntax noprefix
.global _start
.text

_start:
mov rax, 1
mov rdi, 1
lea rsi, [hellostr]
lea rdx, [hellolen]
syscall

mov rax, 60
mov rdi, 69
syscall

.data
hellostr: .ascii "hello world\n"
hellolen = . - hellostr
