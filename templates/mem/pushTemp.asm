// ----------------------------------NEW COMMAND ---------------------------------------------
// push %(operand0)s %(operand1)s
// push temp index 


// LCL stored at RAM[1]
// SP stored at RAM[0]

// for regular %(operand0)s
// %(operand0)s base address to D-reg
// ------------------------------------------------
@5 // RAM[5] is the address of temp
D=A


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
