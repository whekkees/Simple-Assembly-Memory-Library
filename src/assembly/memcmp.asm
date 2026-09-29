option casemap:none

.code 

memcmp proc 

cmp_loop:
test r8, r8 
jz equal 

mov al, byte ptr [rcx]
mov r9b, byte ptr [rdx]

cmp al, r9b 
jne different 

inc rcx 
inc rdx 
dec r8 

jmp cmp_loop 

equal:
xor eax, eax 
ret

different: 
movzx eax, al 
movzx r9d, r9b 

sub eax, r9d 
ret

memcmp endp
end