option casemap:none

.code

memset proc 

mov rax, rcx

mov al, dl

set_loop: 
test r8, r8 
jz equal

mov byte ptr [rcx], al

inc rcx
dec r8

jmp set_loop

equal: 
ret

memset endp
end