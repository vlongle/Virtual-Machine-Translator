// ----------------------------------NEW COMMAND ---------------------------------------------
// push %(operand0)s %(operand1)s
// push memory_segment index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular %(operand0)s
// %(operand0)s base address to D-reg
// ------------------------------------------------
@%(operand0)s
D=M


@%(operand1)s 
D=D+A // D = %(operand0)s-base + %(operand1)s
A=D   
D=M  // store the content of RAM[%(operand0)s + %(operand1)s]

// ------------------------------------------------




@SP // SP
M=M+1
A = M -1 
M = D

// --------------------------------------------------------------------------------------------
