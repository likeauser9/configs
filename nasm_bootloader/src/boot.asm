[BITS 16]
[ORG 0x7c00]

start:
   cli
   mov ax, 0x00
   mov ds, ax
   mov es, ax
   mov ss, ax
   mov sp, 0x7c00
   sti
   mov si, msg

print:
   lodsb
   cmp al, 0
   je done
   mov ah, 0x0E
   int 0x10
   jmp print

done:
   cli
   hlt

msg: db 'Hello World', 0

gdt_start:
   db 0x00000000
   db 0x00000000

   dw 0xFFFF
   dw 0x0000
   dw 0x00
   db 10011010b
   db 11001111b
   db 0x00

   

times 510 - ($ - $$) db 0

dw 0xAA55
