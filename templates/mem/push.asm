// push segment index
// LCL stored at RAM[1]
// SP stored at RAM[0]


// for regular segment
// segment base address to D-reg
// ------------------------------------------------
@segment
D=M


@index 
D=D+A // D = segment-base + index
A=D   
D=M  // store the content of RAM[segment + index]

// ------------------------------------------------

// for push constant index
// -------------------------
@index
D = A

// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1
