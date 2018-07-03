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
// ----------------------------------NEW COMMAND ---------------------------------------------
// pop temp 6
// pop memory_segment index 




// compute the target address from the base address and 6.
// Push the result onto the stack
@temp
D=M // store the base address



@6
D=D+A // temp-base + 6

@SP
A = M // select stack.top

// stack.push(temp-base + 6)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = temp-base + 6
A = M // select RAM[ temp-base + 6 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer

// --------------------------------------------------------------------------------------------
