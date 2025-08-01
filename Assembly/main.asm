section .data
    prompt db "What's your name? "
    prompt_len equ $ - prompt
    fuck_you db "fuck you "
    fuck_you_len equ $ - fuck_you
    newline db 10

section .bss
    name resb 100

section .text
    global _start

_start:
    ; Print prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, prompt_len
    int 0x80

    ; Read name
    mov eax, 3
    mov ebx, 0
    mov ecx, name
    mov edx, 100
    int 0x80

    ; Print "fuck you "
    mov eax, 4
    mov ebx, 1
    mov ecx, fuck_you
    mov edx, fuck_you_len
    int 0x80

    ; Print name
    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, 100
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
