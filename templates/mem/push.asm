// ----------------------------------NEW COMMAND ---------------------------------------------
// pop operand1 operand2
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular operand1
// operand1 base address to D-reg
// ------------------------------------------------
@operand1
D=M


@operand2 
D=D+A // D = operand1-base + operand2
A=D   
D=M  // store the content of RAM[operand1 + operand2]

// ------------------------------------------------

// for push constant operand2
// -------------------------
@operand2
D = A

// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1

// --------------------------------------------------------------------------------------------
