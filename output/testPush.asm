// ----------------------------------NEW COMMAND ---------------------------------------------
// pop LCL 2
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular LCL
// LCL base address to D-reg
// ------------------------------------------------
@LCL
D=M


@2 
D=D+A // D = LCL-base + 2
A=D   
D=M  // store the content of RAM[LCL + 2]

// ------------------------------------------------




@SP // SP
M=M+1
A = M -1 
M = D

// --------------------------------------------------------------------------------------------
