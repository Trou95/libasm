section .text
global _ft_strdup
extern _ft_strlen
extern _malloc


_ft_strdup:
    call _ft_strlen
    inc rax
    push rdi
    mov rdi, rax
    call _malloc
    cmp rax, 0
    je _end
    mov rcx, 0
    pop rdi
_loop:
    cmp [rdi + rcx], byte 0
    je _ret
    mov dl, [rdi + rcx]
    mov [rax + rcx], dl
    inc rcx
    jmp _loop
_ret:
    mov [rax + rcx], byte 0
    jmp _end
_end:
    ret




