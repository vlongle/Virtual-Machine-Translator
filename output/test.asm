
// --------Translating ['push', 'constant', '510']----------
 
@510
D = A

// -------------------------


@SP // SP
A=M // select RAM[SP]
M=D // assign RAM[SP] = content of D

// increment SP
@SP
M=M+1


// END OF INSTRUCTION ---------------
 
 

// --------Translating ['pop', 'temp', '6']----------
 

// compute the target address from the base address and 6.
// Push the result onto the stack
@5
D=A // store the base address



@6
D=D+A // 5-base + 6

@SP
A = M // select stack.top

// stack.push(5-base + 6)
M = D

// stack.pop
A = A - 1 // select the top of stack
D = M // D = stack.pop()

A = A + 1 // select stack.top = 5-base + 6
A = M // select RAM[ 5-base + 6 ]

M = D // push the val into the targetted RAM

@SP
M = M - 1 // decrement the stack pointer


// END OF INSTRUCTION ---------------
 
 
