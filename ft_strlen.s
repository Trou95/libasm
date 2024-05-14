global _ft_strlen

_ft_strlen:
     mov rcx, 0
loop:
    cmp [rdi + rcx], byte 0
    je end
    inc rcx                      
    jmp loop
end:
    mov rax, rcx
    ret