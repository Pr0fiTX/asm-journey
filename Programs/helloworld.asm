format ELF64 executable 3
entry _start

segment readable executable

_start: 
    mov rax, 1
    mov rdi, 1
    mov rsi, out_msg
    mov rdx, out_len
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall

segment readable writeable
  out_msg db 'Hello, World!', 10
  out_len = $ - out_msg


