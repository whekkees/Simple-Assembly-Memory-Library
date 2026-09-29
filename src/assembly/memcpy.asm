option casemap:none

.code

memcpy proc 

mov rax, rcx

cp_loop: 

test r8, r8
jz zero_exit

mov r9b, byte ptr [rdx]
mov byte ptr [rcx], r9b

inc rcx
inc rdx
dec r8

jmp cp_loop

zero_exit: 
ret

memcpy endp
end