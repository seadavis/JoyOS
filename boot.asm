[ org 0x7c00 ]
mov bp, 0x8000
mov sp, bp

mov bx, BOOT_STRING
call print_string

mov bx, BOOT_MSG_2
call print_string

jmp $

BOOT_STRING:
    db 'Booting JoyOS 1',0

BOOT_MSG_2:
    db 'Booted JoyOS', 0

print_string:
    pusha
print_char:
    mov al, [bx]
    mov ah, 0x0e
    int 0x10
    add bx, 1
    cmp al, 0
    jne print_char
return_print_string:
    popa
    ret

times 510 - ($ - $$) db 0
dw 0xAA55