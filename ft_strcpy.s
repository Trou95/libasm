global	_ft_strcpy

_ft_strcpy:
			mov rcx, 0
			mov	rdx, 0
			cmp	rsi, 0
			jz	_end
			jmp	_copy
_inc:
			inc	rcx
_copy:
			mov	dl, byte [rsi + rcx]
			mov	byte [rdi + rcx], dl
			cmp	dl, 0
			jnz	_inc
_end:
			mov	rax, rdi
			ret