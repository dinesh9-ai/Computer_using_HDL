// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@R0
D=M

@i
M=0

@n
M=D

@SUM
M=0

(LOOP)
@i
D=M

@n
D=D-M

@END
D;JEQ

@R1
D=M

@SUM
M=M+D

@i
M=M+1

@LOOP
0;JMP

(END)
@SUM
D=M
@R2
M=D
(SL)
@SL
0;JMP

