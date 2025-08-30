// Name: Your Name
// Class: CS3B
// Lab: 1-2 (putch)
// Date: 01/29/2025
// Purpose: Print one character to the screen
// How it works:
//   - Input: X0 = pointer to a character
//   - Move values into registers for Linux write syscall
//   - Call write(fd=1, buffer=X0, len=1)
//   - Character shows up on screen

        .text
        .align  2
        .global putch

putch:
        MOV     X1, X0      // put buffer address into X1
        MOV     X0, #1      // fd = 1 (stdout)
        MOV     X2, #1      // print 1 byte
        MOV     X8, #64     // syscall number for write
        SVC     #0          // make syscall
        RET                 // return to caller
