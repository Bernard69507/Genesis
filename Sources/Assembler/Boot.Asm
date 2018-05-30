Bits 32
Global Start
Extern Main

Section .bss
StackBottom:
    Resb 65536  ; Leave plenty of Space for the JVM!
StackTop:

Section .text
Start:
    Mov ESP, StackTop

    Call Main

.Hang: Cli
       Hlt
       Jmp .Hang
    
