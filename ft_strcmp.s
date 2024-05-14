global _ft_strcmp

_ft_strcmp:
    mov rcx, 0
_loop:
    mov dl, [rdi + rcx]
    cmp [rsi + rcx], dl
    jne _diff
    cmp dl, 0
    je _end_eq
    inc rcx
    jmp _loop
_diff:
    sub dl, [rsi + rcx]
    cmp dl, 0
    je _end_eq
    jl _end_less
    mov rax, 1
    jmp _end
_end_eq:
    mov rax, 0
    jmp _end
_end_less:
    mov rax, -1
    jmp _end
_end:
    ret

